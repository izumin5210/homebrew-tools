class Ghsync < Formula
  version '0.0.8'
  homepage 'https://github.com/izumin5210/ghsync'
  url "https://github.com/izumin5210/ghsync/releases/download/v0.0.8/ghsync_darwin_amd64.zip"
  sha256 '548a037014cc0301c3004575d00e5138c87f2c2d915f2a3668080b078ba6b44a'
  head 'https://github.com/izumin5210/ghsync.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'ghsync'
  end
end
