class Gex < Formula
  version '0.6.0'
  homepage 'https://github.com/izumin5210/gex'
  url "https://github.com/izumin5210/gex/releases/download/v0.6.0/gex_darwin_amd64.zip"
  sha256 '5b10c00eb5bf92dedb579058a273fac3cc7ab10e12fdd9077dafa6196318938c'
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
