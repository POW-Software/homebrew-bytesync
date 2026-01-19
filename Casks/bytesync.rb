cask "bytesync" do
    version "2026.1.5"
    
    url "https://powbytesyncupdates.blob.core.windows.net/updates/ByteSync_osx-x64_#{version}.app.zip"
    sha256 "d476c6ec54bae3ad12606755a18757be3220ff8a7cf5cbd84c04daf827783cff"

    name "ByteSync"
    desc "Fast & secure file synchronization"
    homepage "https://www.bytesyncapp.com"
  
    app "ByteSync.app"
  end