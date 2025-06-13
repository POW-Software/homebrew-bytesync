cask "bytesync" do
    version "2025.6.4"
    
    url "https://powbytesyncupdates.blob.core.windows.net/updates/ByteSync_osx-x64_#{version}.app.zip"
    sha256 "56a9019d00f57439df383d204eadeaa80e6a7915ba3e5a1c772e06af203400df"

    name "ByteSync"
    desc "Fast & secure file synchronization"
    homepage "https://www.bytesyncapp.com"
  
    app "ByteSync.app"
  end