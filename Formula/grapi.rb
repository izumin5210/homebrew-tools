class Grapi < Formula
  VERSION = "0.1.2".freeze
  NAME = "grapi".freeze
  REPO = "izumin5210/#{NAME}".freeze
  ARCH = "darwin_amd64".freeze

  desc "JSON API framework implemented with gRPC and Gateway"
  homepage "https://github.com/#{REPO}"
  url "https://github.com/#{REPO}/releases/download/v#{VERSION}/#{NAME}_#{VERSION}_#{ARCH}.tar.gz"
  version VERSION
  sha256 "a4129fb993fa321ecd74cfbf66ff4348aee107f34e3c182ee4721b8104451e1a"

  def install
    bin.install "#{NAME}_#{VERSION}_#{ARCH}/#{NAME}"
  end

  test do
    system "#{bin}/#{NAME}", "version"
  end
end
