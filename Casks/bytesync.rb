cask "bytesync" do
    version "2025.1.21"
    sha256 "349C0089374A1BC394182D67EBF14506F9F257D8BBDCECACD1DA92419FB8203F"
  
    url "https://powbytesyncupdates.blob.core.windows.net/updates/ByteSync_osx-x64_#{version}.app.zip"
    name "ByteSync"
    desc "Synchronisation de fichiers rapide et sécurisée"
    homepage "https://www.bytesyncapp.com"
    license "MIT"
  
    # Indique à Homebrew Cask d'installer le bundle .app dans /Applications
    app "ByteSync.app"
  
    # (Optionnel) Si vous souhaitez nettoyer des fichiers config/Logs lors d’uninstall
    # zap trash: [
    #   "~/Library/Application Support/ByteSync",
    #   "~/Library/Logs/ByteSync",
    # ]
  end