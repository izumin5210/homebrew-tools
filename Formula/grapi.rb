class Grapi < Formula
  VERSION = "0.3.0".freeze
  NAME = "grapi".freeze
  REPO = "izumin5210/#{NAME}".freeze
  ARCH = "darwin_amd64".freeze
  BIN = "#{NAME}_#{ARCH}".freeze

  desc "A surprisingly easy API server and generator in gRPC and Go"
  homepage "https://github.com/#{REPO}"
  url "https://github.com/#{REPO}/releases/download/v#{VERSION}/#{BIN}"
  version VERSION
  sha256 "910876b9bd51ff1ceb37eeb72180a14827349d328bad6bffd2671eb5fc4103c1"

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
