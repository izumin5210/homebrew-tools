class Grapi < Formula
  VERSION = "0.1.3".freeze
  NAME = "grapi".freeze
  REPO = "izumin5210/#{NAME}".freeze
  ARCH = "darwin_amd64".freeze
  BIN = "#{NAME}_#{ARCH}".freeze

  desc "JSON API framework implemented with gRPC and Gateway"
  homepage "https://github.com/#{REPO}"
  url "https://github.com/#{REPO}/releases/download/v#{VERSION}/#{BIN}"
  version VERSION
  sha256 "133072f0063938c9977c436dd064eb6a6cfaa99e98297fd69dddd0421a9a16c6"

  def install
    mv BIN, NAME
    bin.install NAME
  end

  test do
    system "#{bin}/#{NAME}", "version"
  end
end
