class Bytesync < Formula
  desc "Fast & secure file synchronization"
  homepage "https://www.bytesyncapp.com"
  license "MIT"
  version "2025.4.2"

  # URL of the tarball containing the *source code* for the specified version.
  # Ensure that the URL corresponds to the appropriate repository and tag.
  url "https://github.com/POW-Software/ByteSync/archive/refs/tags/client-v#{version}.tar.gz"
  sha256 "ed183824a5cb5dd36f189c70f52f3662ce7f3e13231ef3d3cc13f2f71543bc5a" 

  # Dependency required for building: Homebrew will install the .NET SDK.
  depends_on "dotnet" => :build

  def install
    # Search for the *.csproj file within the directory structure.
    # It is assumed that there is only one ByteSync.Client.csproj file.
    client_csproj = Dir["**/ByteSync.Client.csproj"].first

    # Verify that the .csproj file was found.
    # If not found, the installation will fail with an error message.
    odie "Unable to find ByteSync.Client.csproj" if client_csproj.nil?

    # Define the root directory of the ByteSync.Client project.
    # This assumes that the .csproj file is located at the root of ByteSync.Client.
    client_root = File.dirname(client_csproj)

    # Path to the local.settings.json file to be created.
    config_file_path = File.join(client_root, "local.settings.json")

    # Content of the local.settings.json configuration file.
    config_content = <<~JSON
      {
        "LocalDebugUrl": "https://staapi.bytesyncapp.com/api/",
        "DevelopmentUrl": "https://staapi.bytesyncapp.com/api/",
        "StagingUrl": "https://staapi.bytesyncapp.com/api/",
        "ProductionUrl": "https://api.bytesyncapp.com/api/",
        "UpdatesDefinitionUrl": "https://powbytesyncupdates.blob.core.windows.net/updates/updates.json"
      }
    JSON

    # Create the local.settings.json file with the specified content.
    # This step ensures that the configuration file is present at the root before compilation.
    (Pathname.new(client_root) + "local.settings.json").write(config_content)

    # Restore the project's dependencies.
    system "dotnet", "restore", client_csproj

    # Compile and publish the project as a self-contained executable.
    system "dotnet", "publish",
           client_csproj,
           "-c", "Release",
           "-r", "linux-x64",
           "-f", "net8.0",
           "-p:Version=#{version}",
           "-p:FileVersion=#{version}",
           "-p:AssemblyVersion=#{version}",
           "-p:IncludeNativeLibrariesForSelfExtract=true",
           "-p:PublishSingleFile=true",
           "-p:SelfContained=True",
           "-p:DebugType=embedded"

    # Determine the publish directory where the final executable is located.
    # Adjust this path if your project structure differs.
    publish_dir = Dir["**/Release/net8.0/linux-x64/publish"].first
    bin.install "#{publish_dir}/ByteSync"
  end

  test do
    # Minimal test to verify that the executable runs correctly.
    # It executes the '--version' command and checks for a successful exit status.
    system "#{bin}/ByteSync", "--version"
  end
end