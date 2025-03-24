cask "bytesync" do
    version "2025.3.10"
    
    url "https://powbytesyncupdates.blob.core.windows.net/updates/ByteSync_osx-x64_#{version}.app.zip"
    sha256 "55eaad7ec67536206dabf7944504f92b2ba7e032e026eeae1c4757552b312b19"

    name "ByteSync"
    desc "Fast & secure file synchronization"
    homepage "https://www.bytesyncapp.com"
  
    app "ByteSync.app"
  end