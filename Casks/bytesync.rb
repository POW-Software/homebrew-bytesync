cask "bytesync" do
    version "2025.11.1"
    
    url "https://powbytesyncupdates.blob.core.windows.net/updates/ByteSync_osx-x64_#{version}.app.zip"
    sha256 "318294f9e5b2403fc7d4e73dfcbaa318e7292c495e3fffff70d9736cec5f77a2"

    name "ByteSync"
    desc "Fast & secure file synchronization"
    homepage "https://www.bytesyncapp.com"
  
    app "ByteSync.app"
  end