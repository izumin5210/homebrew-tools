class Grapi < Formula
  version '0.5.0'
  homepage 'https://github.com/izumin5210/grapi'
  url "https://github.com/izumin5210/grapi/releases/download/v0.5.0/grapi_darwin_amd64.zip"
  sha256 '1b615bbf0826efef10e8017d43cdc86720b0619163e136e27037acd3991ae6d2'
  head 'https://github.com/izumin5210/grapi.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'grapi'
  end
end
