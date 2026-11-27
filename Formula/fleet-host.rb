class FleetHost < Formula
  desc "Fleet host agent — contribute your machine to the fleet and earn"
  homepage "https://sadigitalsolutions.in"
  version "0.20.0"
  url "https://fleet-downloads-sadigital.s3.ap-south-1.amazonaws.com/fleet-host-darwin-arm64-b21d324f46ca.tar.gz"
  sha256 "b231c577eb93bb58d795b0b60f64c84d2f8aa9b1d401a69c8901bed4f155c950"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "fleet-host"
  end

  test do
    assert_match "usage: fleet-host", shell_output("#{bin}/fleet-host 2>&1", 2)
  end
end
