cask "bytesync" do
    version "2025.10.5"
    
    url "https://powbytesyncupdates.blob.core.windows.net/updates/ByteSync_osx-x64_#{version}.app.zip"
    sha256 "09bec139fd90398d157245251bfe71d4603c7e831423e9ae94cf39b44defdfa2"

    name "ByteSync"
    desc "Fast & secure file synchronization"
    homepage "https://www.bytesyncapp.com"
  
    app "ByteSync.app"
  end