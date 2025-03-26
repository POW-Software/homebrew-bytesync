cask "bytesync" do
    version "2025.3.11"
    
    url "https://powbytesyncupdates.blob.core.windows.net/updates/ByteSync_osx-x64_#{version}.app.zip"
    sha256 "df9e1e2f4ab65c6cb6e817b79d12ec5f3540550a6eb7e989924239dc78ce7e43"

    name "ByteSync"
    desc "Fast & secure file synchronization"
    homepage "https://www.bytesyncapp.com"
  
    app "ByteSync.app"
  end