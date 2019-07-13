class Ghsync < Formula
  version '0.0.7'
  homepage 'https://github.com/izumin5210/ghsync'
  url "https://github.com/izumin5210/ghsync/releases/download/v0.0.7/ghsync_darwin_amd64.zip"
  sha256 '663295890ff94ddb186a854683740817007a692e53366bdb2cc9a0dabc960f41'
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
