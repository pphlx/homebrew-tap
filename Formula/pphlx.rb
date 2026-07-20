class Pphlx < Formula
  desc "High-performance component compiler that compiles modern web components to pure PHP"
  homepage "https://pphlx.org"
  version "1.0.7"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/pphlx/pphlx/releases/download/v1.0.7/pphlx-darwin-arm64.tar.gz"
      sha256 "30c37394a7ed0c4de48d7f86d94720c928c17d368dfdc008856a02498e873661"
    else
      url "https://github.com/pphlx/pphlx/releases/download/v1.0.7/pphlx-darwin-amd64.tar.gz"
      sha256 "94792e8f4773738032fb8d5adfc18cfee8938a60c7de3058236a5af3daac0c50"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/pphlx/pphlx/releases/download/v1.0.7/pphlx-linux-arm64.tar.gz"
      sha256 "df112137f85cc1b58eb0407e90f0e6692a9545bf1d3450385202ee25e0005847"
    else
      url "https://github.com/pphlx/pphlx/releases/download/v1.0.7/pphlx-linux-amd64.tar.gz"
      sha256 "a5b1e8d513d72b4804fba7a85749cd60a54af10536206556dcc3cd08c49c44a6"
    end
  end

  def install
    bin.install "pphlx"
  end

  test do
    system "#{bin}/pphlx", "--version"
  end
end
