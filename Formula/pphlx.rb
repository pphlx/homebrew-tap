class Pphlx < Formula
  desc "High-performance component compiler that compiles modern web components to pure PHP"
  homepage "https://pphlx.org"
  version "1.0.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/pphlx/pphlx/releases/download/v1.0.0/pphlx-darwin-arm64.tar.gz"
      sha256 "47b367edf00214f3a9d96fe9c9d1a463e46753769fc5e8aaf81a5747dedb2578"
    else
      url "https://github.com/pphlx/pphlx/releases/download/v1.0.0/pphlx-darwin-amd64.tar.gz"
      sha256 "0e178a9886af5448aac8c7882b83d608834f35c7e5f5f104e2f8ed6737906a74"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/pphlx/pphlx/releases/download/v1.0.0/pphlx-linux-arm64.tar.gz"
      sha256 "d119908a9cdbf24f0ca6f9b06757827630b870f6000c2c572b6a449fc7b92aaa"
    else
      url "https://github.com/pphlx/pphlx/releases/download/v1.0.0/pphlx-linux-amd64.tar.gz"
      sha256 "0f73eea015a495eca621dd14e281f962d6acc3e292a81f3b23dcecacad7d4b29"
    end
  end

  def install
    bin.install "pphlx"
  end

  test do
    system "#{bin}/pphlx", "--version"
  end
end
