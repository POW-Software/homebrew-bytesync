class Bytesync < Formula
  desc "Fast & secure file synchronization"
  homepage "https://www.bytesyncapp.com"
  url "https://powbytesyncupdates.blob.core.windows.net/updates/ByteSync_linux-x64_2025.1.21.tar.gz"
  sha256 "A21F084F28A4283E65806442A0C8404FA38A1A1658B3AD2B2686899FD869A623"
  license "MIT"
  version "2025.1.21"

  def install
    bin.install "ByteSync"
  end

  test do
    system "#{bin}/ByteSync", "--version"
  end
end