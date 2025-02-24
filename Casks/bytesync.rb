cask "bytesync" do
    version "2025.2.7"
    
    url "https://powbytesyncupdates.blob.core.windows.net/updates/ByteSync_osx-x64_#{version}.app.zip"
    sha256 "E486A431DEAB1659952E285A27453BCB865C8279A571503C13AEDAAE39622EF1"

    name "ByteSync"
    desc "Fast & secure file synchronization"
    homepage "https://www.bytesyncapp.com"
  
    app "ByteSync.app"
  end