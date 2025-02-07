cask "bytesync" do
    version "2025.2.4"
    
    url "https://powbytesyncupdates.blob.core.windows.net/updates/ByteSync_osx-x64_#{version}.app.zip"
    sha256 "BCB6AE0024C7943468B2F2489C60759DAD01E6C2F2CFC6FD34773F7992BF5823"

    name "ByteSync"
    desc "Fast & secure file synchronization"
    homepage "https://www.bytesyncapp.com"
  
    app "ByteSync.app"
  end