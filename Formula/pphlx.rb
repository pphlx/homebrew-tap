class Pphlx < Formula
  desc "High-performance component compiler that compiles modern web components to pure PHP"
  homepage "https://pphlx.org"
  version "1.0.6"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/pphlx/pphlx/releases/download/v1.0.6/pphlx-darwin-arm64.tar.gz"
      sha256 "21a99d84267a01f6b8639532f4b69089009271008b87a3f4e7f4f67d8f85c88d"
    else
      url "https://github.com/pphlx/pphlx/releases/download/v1.0.6/pphlx-darwin-amd64.tar.gz"
      sha256 "849ce2a231f262cf56a70df694217cbd79faaf35c2d90f2f9e54cc515d276cc7"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/pphlx/pphlx/releases/download/v1.0.6/pphlx-linux-arm64.tar.gz"
      sha256 "876b5a9b25695711ae5bce6b2445b7f1e81467320b5d7b3f1b291500c4da7d08"
    else
      url "https://github.com/pphlx/pphlx/releases/download/v1.0.6/pphlx-linux-amd64.tar.gz"
      sha256 "0273c4a6ff7e24F3E202abe1c188f578d2eb64f60379e3c7642a45827469b2b6"
    end
  end

  def install
    bin.install "pphlx"
  end

  test do
    system "#{bin}/pphlx", "--version"
  end
end
