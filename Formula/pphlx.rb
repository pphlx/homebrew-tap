class Pphlx < Formula
  desc "High-performance component compiler that compiles modern web components to pure PHP"
  homepage "https://pphlx.org"
  version "1.0.4"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/pphlx/pphlx/releases/download/v1.0.4/pphlx-darwin-arm64.tar.gz"
      sha256 "4880e386fb1fe5860a92170136cc5d56b81b32cc1c4af3e93fa3cda3444358d6"
    else
      url "https://github.com/pphlx/pphlx/releases/download/v1.0.4/pphlx-darwin-amd64.tar.gz"
      sha256 "68341a2d2243da3beb05625a094452e827b6e84e79825061f4bb0cb80d340862"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/pphlx/pphlx/releases/download/v1.0.4/pphlx-linux-arm64.tar.gz"
      sha256 "0fe2eff78009715b3fce7d78a1d0e0b21f5cf54492e751609da023c332ed7c79"
    else
      url "https://github.com/pphlx/pphlx/releases/download/v1.0.4/pphlx-linux-amd64.tar.gz"
      sha256 "ceb2a937b1e9eb680df04d837ee661c09ea425d4166a8e803eba34750adbaae7"
    end
  end

  def install
    bin.install "pphlx"
  end

  test do
    system "#{bin}/pphlx", "--version"
  end
end
