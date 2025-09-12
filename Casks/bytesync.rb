cask "bytesync" do
    version "2025.9.3"
    
    url "https://powbytesyncupdates.blob.core.windows.net/updates/ByteSync_osx-x64_#{version}.app.zip"
    sha256 "cd1aa57640ed427f360e90bdf23f80980b7b35105294c6907f45c5bc1642f86b"

    name "ByteSync"
    desc "Fast & secure file synchronization"
    homepage "https://www.bytesyncapp.com"
  
    app "ByteSync.app"
  end