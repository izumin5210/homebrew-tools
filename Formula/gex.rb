class Gex < Formula
  version '0.5.1'
  homepage 'https://github.com/izumin5210/gex'
  url "https://github.com/izumin5210/gex/releases/download/v0.5.1/gex_darwin_amd64.zip"
  sha256 '82985c28d78d41092bc1a1994b441175e34c622e6434c695700faa655e006653'
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
