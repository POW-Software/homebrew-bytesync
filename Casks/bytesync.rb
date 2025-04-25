cask "bytesync" do
    version "2025.4.15"
    
    url "https://powbytesyncupdates.blob.core.windows.net/updates/ByteSync_osx-x64_#{version}.app.zip"
    sha256 "60e28c739fcfe6429b258dc4a0ca1b6fccd8da3ca5560ea42e4dfb118aef0829"

    name "ByteSync"
    desc "Fast & secure file synchronization"
    homepage "https://www.bytesyncapp.com"
  
    app "ByteSync.app"
  end