class Grapi < Formula
  VERSION = "0.4.0".freeze
  NAME = "grapi".freeze
  REPO = "izumin5210/#{NAME}".freeze
  ARCH = "darwin_amd64".freeze
  BIN = "#{NAME}_#{ARCH}".freeze

  desc "A surprisingly easy API server and generator in gRPC and Go"
  homepage "https://github.com/#{REPO}"
  url "https://github.com/#{REPO}/releases/download/v#{VERSION}/#{BIN}"
  version VERSION
  sha256 "908fa6cde4cab3513f33211fe311e09d566ce1f4bc1040dbb479e424cfab2ef3"

  head do
    url "https://github.com/#{REPO}/releases/download/canary/#{BIN}"
  end

  def install
    mv BIN, NAME
    bin.install NAME
  end

  test do
    system "#{bin}/#{NAME}", "version"
  end
end
