class Pphlx < Formula
  desc "High-performance component compiler that compiles modern web components to pure PHP"
  homepage "https://pphlx.org"
  version "1.0.9"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/pphlx/pphlx/releases/download/v1.0.9/pphlx-darwin-arm64.tar.gz"
      sha256 "3574f3761bad5fd5030f023774cb6756cc1ddab5a5f45c2210e2f38d11564c2d"
    else
      url "https://github.com/pphlx/pphlx/releases/download/v1.0.9/pphlx-darwin-amd64.tar.gz"
      sha256 "850c376d008f03be780a7d7e12100754a4d2c57c1eb7dea15bf4f0f17dcde662"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/pphlx/pphlx/releases/download/v1.0.9/pphlx-linux-arm64.tar.gz"
      sha256 "9af8b525e970582824f3032f19aca46f4531cf8ab03c3dd4230feec7e5633e7f"
    else
      url "https://github.com/pphlx/pphlx/releases/download/v1.0.9/pphlx-linux-amd64.tar.gz"
      sha256 "376fafab4f26ee190cb008939495528aceecf30565941fcb8c9b474f4ba5b00d"
    end
  end

  def install
    bin.install "pphlx"
  end

  test do
    system "#{bin}/pphlx", "--version"
  end
end
