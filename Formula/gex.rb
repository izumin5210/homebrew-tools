class Gex < Formula
  version '0.6.1'
  homepage 'https://github.com/izumin5210/gex'
  url "https://github.com/izumin5210/gex/releases/download/v0.6.1/gex_darwin_amd64.zip"
  sha256 '9c901f8aff48fa7cedb184549481365251bf6a381f400f7da8ebc08dcac63da0'
  head 'https://github.com/izumin5210/gex.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'gex'
  end
end
