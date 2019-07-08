class Ghsync < Formula
  version '0.0.4'
  homepage 'https://github.com/izumin5210/ghsync'
  url "https://github.com/izumin5210/ghsync/releases/download/v0.0.4/ghsync_darwin_amd64.zip"
  sha256 '2f5113b359b5691910d0d45bee53c3e914eab4a99608df58ddf169dbaefb6397'
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
