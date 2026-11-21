class FleetHost < Formula
  desc "Fleet host agent — contribute your machine to the fleet and earn"
  homepage "https://sadigitalsolutions.in"
  version "0.15.0"
  url "https://fleet-downloads-sadigital.s3.ap-south-1.amazonaws.com/fleet-host-darwin-arm64-8010c0c9b0bf.tar.gz"
  sha256 "2c2e2f4b2ff9dae34ce61bf907fe0fefbc8e1b47d014b20c5b716072845cd40f"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "fleet-host"
  end

  test do
    assert_match "usage: fleet-host", shell_output("#{bin}/fleet-host 2>&1", 2)
  end
end
