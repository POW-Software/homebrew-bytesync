cask "bytesync" do
    version "2025.2.2"
    
    url "https://powbytesyncupdates.blob.core.windows.net/updates/ByteSync_osx-x64_#{version}.app.zip"
    sha256 "60B8D8B16C9B0AB82C19A717894843414C3752B7A5AA9C22797CB99D3A0818B1"

    name "ByteSync"
    desc "Fast & secure file synchronization"
    homepage "https://www.bytesyncapp.com"
  
    app "ByteSync.app"
  end