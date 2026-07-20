class Pphlx < Formula
  desc "High-performance component compiler that compiles modern web components to pure PHP"
  homepage "https://pphlx.org"
  version "1.0.8"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/pphlx/pphlx/releases/download/v1.0.8/pphlx-darwin-arm64.tar.gz"
      sha256 "ec87d6bc08f4689a93e15ddae413ec18321a11308fd896e3a7d483fbaca8a08"
    else
      url "https://github.com/pphlx/pphlx/releases/download/v1.0.8/pphlx-darwin-amd64.tar.gz"
      sha256 "a1b53ecf87fe13bff7a3c2a80cd1d61bb2fce876b78ebaeab2b2a56235571318"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/pphlx/pphlx/releases/download/v1.0.8/pphlx-linux-arm64.tar.gz"
      sha256 "ef5c9f4769f5c85e2f0c8eb0ded8cfea50be80dd6d9db09c6a0d443646f1104e"
    else
      url "https://github.com/pphlx/pphlx/releases/download/v1.0.8/pphlx-linux-amd64.tar.gz"
      sha256 "56fb67c61a3d07b9ef726d0acec5839b039a01d029243c94ce453b15d04a1d78"
    end
  end

  def install
    bin.install "pphlx"
  end

  test do
    system "#{bin}/pphlx", "--version"
  end
end
