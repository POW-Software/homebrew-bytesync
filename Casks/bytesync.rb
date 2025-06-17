cask "bytesync" do
    version "2025.6.6"
    
    url "https://powbytesyncupdates.blob.core.windows.net/updates/ByteSync_osx-x64_#{version}.app.zip"
    sha256 "ad869b9066984ccf944a39e3fe3e01aa373367751888aa50759219a19501d39f"

    name "ByteSync"
    desc "Fast & secure file synchronization"
    homepage "https://www.bytesyncapp.com"
  
    app "ByteSync.app"
  end