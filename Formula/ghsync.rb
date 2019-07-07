class Ghsync < Formula
  version '0.0.1'
  homepage 'https://github.com/izumin5210/ghsync'
  url "https://github.com/izumin5210/ghsync/releases/download/v0.0.1/ghsync_darwin_amd64.zip"
  sha256 'c92526b29a31b1b009fc5677b333e4f87e9a96d5f8606b9cfd6ac577ae8d4b87'
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
