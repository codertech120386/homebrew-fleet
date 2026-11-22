class FleetHost < Formula
  desc "Fleet host agent — contribute your machine to the fleet and earn"
  homepage "https://sadigitalsolutions.in"
  version "0.16.0"
  url "https://fleet-downloads-sadigital.s3.ap-south-1.amazonaws.com/fleet-host-darwin-arm64-eb8cfa1c9bb7.tar.gz"
  sha256 "ced9c14e352c36964132ca1f6db90c5fe1f06a478d2d149ad9636468fb310595"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "fleet-host"
  end

  test do
    assert_match "usage: fleet-host", shell_output("#{bin}/fleet-host 2>&1", 2)
  end
end
