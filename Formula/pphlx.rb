class Pphlx < Formula
  desc "High-performance component compiler that compiles modern web components to pure PHP"
  homepage "https://pphlx.org"
  version "1.0.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/pphlx/pphlx/releases/download/v1.0.0/pphlx-darwin-arm64.tar.gz"
      sha256 "a43aaab7b942c176e2e8f28d1ada9b3f9808f602e364002df167abf7c0b93fa7"
    else
      url "https://github.com/pphlx/pphlx/releases/download/v1.0.0/pphlx-darwin-amd64.tar.gz"
      sha256 "e9f12879637ded5b4c36c118c2c43fc33902e1d5dfec8cc95316553bb4430859"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/pphlx/pphlx/releases/download/v1.0.0/pphlx-linux-arm64.tar.gz"
      sha256 "bda08bc11f128e1f7c62998265464235ed9512ffa2fcd0b8be68d114eb7e14dd"
    else
      url "https://github.com/pphlx/pphlx/releases/download/v1.0.0/pphlx-linux-amd64.tar.gz"
      sha256 "6ab5b601975edc0c26aacabc130855453f9b5262c877ab1b0b506fcf43fca867"
    end
  end

  def install
    bin.install "pphlx"
  end

  test do
    system "#{bin}/pphlx", "--version"
  end
end
