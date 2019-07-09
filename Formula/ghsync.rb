class Ghsync < Formula
  version '0.0.5'
  homepage 'https://github.com/izumin5210/ghsync'
  url "https://github.com/izumin5210/ghsync/releases/download/v0.0.5/ghsync_darwin_amd64.zip"
  sha256 '222762e80dc039fb761b35178bcb0ed848113cd3c01ece292f9ed5c3a3ff94e7'
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
