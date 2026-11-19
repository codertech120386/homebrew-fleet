class FleetHost < Formula
  desc "Fleet host agent — contribute your machine to the fleet and earn"
  homepage "https://sadigitalsolutions.in"
  version "0.13.0"
  url "https://fleet-downloads-sadigital.s3.ap-south-1.amazonaws.com/fleet-host-darwin-arm64-72cb1347c5f5.tar.gz"
  sha256 "42f6116eff688a65a3f8e469d838d93cc79544c99383a72aecb94013400ced28"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "fleet-host"
  end

  test do
    assert_match "usage: fleet-host", shell_output("#{bin}/fleet-host 2>&1", 2)
  end
end
