class Grapi < Formula
  VERSION = "0.1.0".freeze
  NAME = "grapi".freeze
  REPO = "izumin5210/#{NAME}".freeze
  ARCH = "darwin_amd64".freeze

  desc "JSON API framework implemented with gRPC and Gateway"
  homepage "https://github.com/#{REPO}"
  url "https://github.com/#{REPO}/releases/download/v#{VERSION}/#{NAME}_#{VERSION}_#{ARCH}.tar.gz"
  version VERSION
  sha256 "948a28648ed19640c57261ffafcdbb48c93b520142d7244bdf07da632493111b"

  def install
    bin.install "#{NAME}_#{VERSION}_#{ARCH}/#{NAME}"
  end

  test do
    system "#{bin}/#{NAME}", "version"
  end
end
