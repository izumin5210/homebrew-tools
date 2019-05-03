class Pubsubcli < Formula
  version '0.0.1'
  homepage 'https://github.com/izumin5210/pubsubcli'
  url "https://github.com/izumin5210/pubsubcli/releases/download/v0.0.1/pubsubcli_darwin_amd64.zip"
  sha256 'e12d8cbf7116f4bce5f285d91c8b3be0453c083a8e703f6ebb8df9a9c636f917'
  head 'https://github.com/izumin5210/pubsubcli.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'pubsubcli'
  end
end
