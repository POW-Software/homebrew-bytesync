cask "bytesync" do
    version "2025.1.50"
    
    url "https://powbytesyncupdates.blob.core.windows.net/updates/ByteSync_osx-x64_#{version}.app.zip"
    sha256 "9E4DE7DFFF17E2D7ABAABB923F647A474E92B02FFD5382A0E0386602060F9D37"

    name "ByteSync"
    desc "Fast & secure file synchronization"
    homepage "https://www.bytesyncapp.com"
  
    app "ByteSync.app"
  end