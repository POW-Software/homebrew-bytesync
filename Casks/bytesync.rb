cask "bytesync" do
    version "2025.3.2"
    
    url "https://powbytesyncupdates.blob.core.windows.net/updates/ByteSync_osx-x64_#{version}.app.zip"
    sha256 "677f442ba7531c767ad1fbea8e69aeb023518cd751dd289845f64715f2601cae"

    name "ByteSync"
    desc "Fast & secure file synchronization"
    homepage "https://www.bytesyncapp.com"
  
    app "ByteSync.app"
  end