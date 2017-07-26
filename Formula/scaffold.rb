class Scaffold < Formula
  VERSION = "0.1.1".freeze
  REPO = "izumin5210/scaffold".freeze
  ARCH = "darwin_amd64"

  desc "Customizable templates generator, inspired by Rails"
  homepage "https://github.com/#{REPO}"
  url "https://github.com/#{REPO}/releases/download/v#{VERSION}/scaffold_#{VERSION}_#{ARCH}.tar.gz"
  version VERSION
  sha256 "2d868b966320d395a5e8b13d330379dc006e83af9c2d962728f7a3c15c9464cf"

  def install
    bin.install "scaffold_#{VERSION}_#{ARCH}/scaffold"
  end

  test do
    system "#{bin}/scaffold", "-v"
  end
end
