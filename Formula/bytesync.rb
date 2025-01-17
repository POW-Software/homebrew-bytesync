class Bytesync < Formula
  desc "Fast & secure file synchronization"
  homepage "https://www.bytesyncapp.com"
  license "MIT"
  version "2025.1.21"

  # Exemple de tarball contenant *le code source* (tag v2023.1.1).
  # À adapter selon votre repo / tag.
  url "https://powbytesyncupdates.blob.core.windows.net/updates/ByteSync_src_2025.1.21.zip"
  sha256 "859481D43FEDB646D4DC33038DF7ABEF4ED4CB41E29076560E7C9B836412443A" 

  # Homebrew installera le SDK .NET avant de compiler
  depends_on "dotnet" => :build

  def install
    # Restaurer les dépendances (optionnel si le .csproj l'exige)
    system "dotnet", "restore", "ByteSync-master/src/ByteSync.Client/ByteSync.Client.csproj"

    # Compiler + publier en un exécutable autonome
    system "dotnet", "publish",
           "ByteSync-master/src/ByteSync.Client/ByteSync.Client.csproj"
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