cask "bytesync" do
    version "2025.4.2"
    
    url "https://powbytesyncupdates.blob.core.windows.net/updates/ByteSync_osx-x64_#{version}.app.zip"
    sha256 "be6e8e996eb2097cd9bc074dfa7a17a88101446e02f96c2cce7d65d40a23d51f"

    name "ByteSync"
    desc "Fast & secure file synchronization"
    homepage "https://www.bytesyncapp.com"
  
    app "ByteSync.app"
  end