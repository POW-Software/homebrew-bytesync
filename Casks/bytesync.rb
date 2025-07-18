cask "bytesync" do
    version "2025.7.2"
    
    url "https://powbytesyncupdates.blob.core.windows.net/updates/ByteSync_osx-x64_#{version}.app.zip"
    sha256 "dcf1753624df0d1433c2e5e8ebc4734d1751f2ccc84affc031cf93cf00dc0e81"

    name "ByteSync"
    desc "Fast & secure file synchronization"
    homepage "https://www.bytesyncapp.com"
  
    app "ByteSync.app"
  end