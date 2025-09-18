cask "bytesync" do
    version "2025.9.4"
    
    url "https://powbytesyncupdates.blob.core.windows.net/updates/ByteSync_osx-x64_#{version}.app.zip"
    sha256 "ecb76b9917e861e51475c2c25ddc4f0d8b66704b9e07e3dad5f406752b77cf5c"

    name "ByteSync"
    desc "Fast & secure file synchronization"
    homepage "https://www.bytesyncapp.com"
  
    app "ByteSync.app"
  end