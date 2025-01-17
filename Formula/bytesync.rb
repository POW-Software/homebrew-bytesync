class Bytesync < Formula
  desc "Fast & secure file synchronization"
  homepage "https://www.bytesyncapp.com"
  license "MIT"
  version "2025.1.21"

  # Exemple de tarball contenant *le code source* (tag v2023.1.1).
  # À adapter selon votre repo / tag.
  url "https://powbytesyncupdates.blob.core.windows.net/updates/ByteSync_src_2025.1.21.tar.gz"
  sha256 "A21F084F28A4283E65806442A0C8404FA38A1A1658B3AD2B2686899FD869A623" 

  # Homebrew installera le SDK .NET avant de compiler
  depends_on "dotnet" => :build

  def install
    # Restaurer les dépendances (optionnel si le .csproj l'exige)
    # system "dotnet", "restore", "ByteSync.sln"

    # Compiler + publier en un exécutable autonome
    system "dotnet", "publish",
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

    # Selon votre structure, le binaire final peut se trouver dans :
    #   ByteSync/bin/Release/net8.0/linux-x64/publish/ByteSync
    # ou équivalent (si vous avez plusieurs projets, adaptez).
    #
    # Le plus sûr est de repérer ce répertoire publish/ par pattern.
    # Exemple :
    publish_dir = Dir["**/Release/net8.0/linux-x64/publish"].first
    bin.install "#{publish_dir}/ByteSync"
  end

  test do
    # Test minimal pour vérifier que l'exécutable fonctionne
    system "#{bin}/ByteSync", "--version"
  end
end