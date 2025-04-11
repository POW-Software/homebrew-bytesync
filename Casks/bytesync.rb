cask "bytesync" do
    version "2025.4.5"
    
    url "https://powbytesyncupdates.blob.core.windows.net/updates/ByteSync_osx-x64_#{version}.app.zip"
    sha256 "f08c444c732b9d2ec192aefe3ce9f2f3acb1e6e600fcc70c620fe72172937cda"

    name "ByteSync"
    desc "Fast & secure file synchronization"
    homepage "https://www.bytesyncapp.com"
  
    app "ByteSync.app"
  end