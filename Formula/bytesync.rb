class Bytesync < Formula
    desc "Synchronisation de fichiers rapide et sécurisée"
    homepage "https://www.bytesyncapp.com"
  
    if OS.mac?
      url "https://powbytesyncupdates.blob.core.windows.net/updates/ByteSync_osx-x64_2025.1.21.app.zip"
      sha256 "349C0089374A1BC394182D67EBF14506F9F257D8BBDCECACD1DA92419FB8203F"
    elsif OS.linux?
      url "https://powbytesyncupdates.blob.core.windows.net/updates/ByteSync_linux-x64_2025.1.21.tar.gz"
      sha256 "A21F084F28A4283E65806442A0C8404FA38A1A1658B3AD2B2686899FD869A623"
    end
  
    license "MIT"
  
    def install
      bin.install "ByteSync"
    end
  
    test do
      system "#{bin}/ByteSync", "--version"
    end
  end