class FleetHost < Formula
  desc "Fleet host agent — contribute your machine to the fleet and earn"
  homepage "https://sadigitalsolutions.in"
  version "0.6.0"
  url "https://fleet-downloads-sadigital.s3.ap-south-1.amazonaws.com/fleet-host-darwin-arm64-ce0bb9874707.tar.gz"
  sha256 "fa8b1cf4d52b5e826620a536a8bf82b666795f0adcbab0e3d74b03a33bf7c216"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "fleet-host"
  end

  test do
    assert_match "usage: fleet-host", shell_output("#{bin}/fleet-host 2>&1", 2)
  end
end
