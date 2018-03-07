class Grapi < Formula
  VERSION = "0.1.1".freeze
  NAME = "grapi".freeze
  REPO = "izumin5210/#{NAME}".freeze
  ARCH = "darwin_amd64".freeze

  desc "JSON API framework implemented with gRPC and Gateway"
  homepage "https://github.com/#{REPO}"
  url "https://github.com/#{REPO}/releases/download/v#{VERSION}/#{NAME}_#{VERSION}_#{ARCH}.tar.gz"
  version VERSION
  sha256 "1a83a152a5e11b753d71709aa8134c7d0c439d9d16542af384b713e6aa6e51e1"

  def install
    bin.install "#{NAME}_#{VERSION}_#{ARCH}/#{NAME}"
  end

  test do
    system "#{bin}/#{NAME}", "version"
  end
end
