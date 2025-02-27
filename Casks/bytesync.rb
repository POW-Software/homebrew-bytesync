cask "bytesync" do
    version "2025.2.8"
    
    url "https://powbytesyncupdates.blob.core.windows.net/updates/ByteSync_osx-x64_#{version}.app.zip"
    sha256 "0777CDEC7495E222F5173625D2B729FA68290A61F9DFE229726BB241EE06B548"

    name "ByteSync"
    desc "Fast & secure file synchronization"
    homepage "https://www.bytesyncapp.com"
  
    app "ByteSync.app"
  end