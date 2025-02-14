cask "bytesync" do
    version "2025.2.6"
    
    url "https://powbytesyncupdates.blob.core.windows.net/updates/ByteSync_osx-x64_#{version}.app.zip"
    sha256 "103133C28F34509E1F2388142D16465847E77BF9FCD6087535C1FB8B7C86AE8A"

    name "ByteSync"
    desc "Fast & secure file synchronization"
    homepage "https://www.bytesyncapp.com"
  
    app "ByteSync.app"
  end