cask "bytesync" do
    version "2025.3.5"
    
    url "https://powbytesyncupdates.blob.core.windows.net/updates/ByteSync_osx-x64_#{version}.app.zip"
    sha256 "93e1fc43a5e9b2c14de1a860319d126b62592caf933cff824064ad3fcac7a524"

    name "ByteSync"
    desc "Fast & secure file synchronization"
    homepage "https://www.bytesyncapp.com"
  
    app "ByteSync.app"
  end