cask "bytesync" do
    version "2025.1.49"
    sha256 "E628FC9D0B6163A97F578D1C20F46D2F4BB85EFFE7AC7D10523F6C4E87620F47"
  
    url "https://powbytesyncupdates.blob.core.windows.net/updates/ByteSync_osx-x64_#{version}.app.zip"
    name "ByteSync"
    desc "Synchronisation de fichiers rapide et sécurisée"
    homepage "https://www.bytesyncapp.com"
    # license "MIT"
  
    app "ByteSync.app"
  end