class Bytesync < Formula
  desc "Fast & secure file synchronization"
  homepage "https://www.bytesyncapp.com"
  license "MIT"
  version "2025.1.21"

  # Exemple de tarball contenant *le code source* (tag v2023.1.1).
  # À adapter selon votre repo / tag.
  url "https://powbytesyncupdates.blob.core.windows.net/updates/ByteSync_src_2025.1.21.zip"
  sha256 "46C01821E883226ABB63115960B6140BC87257C11372DCC88B3EBC7236917ED1" 

  # Homebrew installera le SDK .NET avant de compiler
  depends_on "dotnet" => :build

  def install
    # Cherche le fichier *.csproj dans l'arborescence
    # Ici, on suppose qu'on n'a qu'un seul ByteSync.Client.csproj
    client_csproj = Dir["**/ByteSync.Client.csproj"].first

    # Vérification (optionnelle) pour s'assurer qu'on a bien trouvé le .csproj
    odie "Impossible de trouver ByteSync.Client.csproj" if client_csproj.nil?

    # 1) Restaurer
    system "dotnet", "restore", client_csproj

    # Compiler + publier en un exécutable autonome
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