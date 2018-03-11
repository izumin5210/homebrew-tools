class Cliutils < Formula
  VERSION = "0.1.0".freeze
  NAME = "cliutils".freeze
  REPO = "izumin5210/clicontrib".freeze
  ARCH = "darwin_amd64".freeze
  BIN = "#{NAME}_#{ARCH}".freeze

  # desc "JSON API framework implemented with gRPC and Gateway"
  homepage "https://github.com/#{REPO}"
  url "https://github.com/#{REPO}/releases/download/v#{VERSION}/#{BIN}"
  version VERSION
  sha256 "e696201288ad16532f00cac6c605163e51112581c1967a1baeb91a20b0df4f73"

  def install
    mv BIN, NAME
    bin.install NAME
  end

  test do
    system "#{bin}/#{NAME}", "version"
  end
end
