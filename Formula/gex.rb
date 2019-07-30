class Gex < Formula
  version '0.5.0'
  homepage 'https://github.com/izumin5210/gex'
  url "https://github.com/izumin5210/gex/releases/download/v0.5.0/gex_darwin_amd64.zip"
  sha256 '229c4b792de929dfdc46d361f60edb79d79e88eaa27b8729ed8986391720b1e2'
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
