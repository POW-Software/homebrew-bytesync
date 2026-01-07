cask "bytesync" do
    version "2026.1.4"
    
    url "https://powbytesyncupdates.blob.core.windows.net/updates/ByteSync_osx-x64_#{version}.app.zip"
    sha256 "59f713e4f6a1b1a27acbf111424bda8cdc7442f09608c446c0ab0ee6154f9dde"

    name "ByteSync"
    desc "Fast & secure file synchronization"
    homepage "https://www.bytesyncapp.com"
  
    app "ByteSync.app"
  end