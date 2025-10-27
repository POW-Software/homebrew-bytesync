cask "bytesync" do
    version "2025.10.6"
    
    url "https://powbytesyncupdates.blob.core.windows.net/updates/ByteSync_osx-x64_#{version}.app.zip"
    sha256 "84973ff191bf4a7ca6036e1e727b49a88401293a33dc8816fd1aa2ef942f85cd"

    name "ByteSync"
    desc "Fast & secure file synchronization"
    homepage "https://www.bytesyncapp.com"
  
    app "ByteSync.app"
  end