cask "bytesync" do
    version "2025.1.49"
    
    url "https://powbytesyncupdates.blob.core.windows.net/updates/ByteSync_osx-x64_#{version}.app.zip"
    sha256 "E628FC9D0B6163A97F578D1C20F46D2F4BB85EFFE7AC7D10523F6C4E87620F47"

    name "ByteSync"
    desc "Fast & secure file synchronization"
    homepage "https://www.bytesyncapp.com"
  
    app "ByteSync.app"
  end