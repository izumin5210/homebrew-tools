class Grapi < Formula
  VERSION = "0.2.1".freeze
  NAME = "grapi".freeze
  REPO = "izumin5210/#{NAME}".freeze
  ARCH = "darwin_amd64".freeze
  BIN = "#{NAME}_#{ARCH}".freeze

  desc "JSON API framework implemented with gRPC and Gateway"
  homepage "https://github.com/#{REPO}"
  url "https://github.com/#{REPO}/releases/download/v#{VERSION}/#{BIN}"
  version VERSION
  sha256 "620a72dfa4b0aea80c3943b9953391d765deb22615c982a767cfa112c65e594d"

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
