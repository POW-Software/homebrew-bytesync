cask "bytesync" do
    version "2025.3.1"
    
    url "https://powbytesyncupdates.blob.core.windows.net/updates/ByteSync_osx-x64_#{version}.app.zip"
    sha256 "8A1E66786B4003051797D6301883FC8158391DB8B7CAC200C90748E7DCD8D385"

    name "ByteSync"
    desc "Fast & secure file synchronization"
    homepage "https://www.bytesyncapp.com"
  
    app "ByteSync.app"
  end