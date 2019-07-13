class Ghsync < Formula
  version '0.0.6'
  homepage 'https://github.com/izumin5210/ghsync'
  url "https://github.com/izumin5210/ghsync/releases/download/v0.0.6/ghsync_darwin_amd64.zip"
  sha256 'd78263b42a5b1a716a44ed8f5b0236a1ebd67d8bbc39ab883db9763103a8179d'
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
