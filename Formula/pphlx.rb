class Pphlx < Formula
  desc "High-performance component compiler that compiles modern web components to pure PHP"
  homepage "https://pphlx.org"
  version "1.0.0"
  license "MIT"

  # Update URLs and SHA256 hashes once your GitHub releases are published
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/pphlx/pphlx/releases/download/v1.0.0/pphlx-darwin-arm64.tar.gz"
      sha256 "REPLACE_WITH_SHA256_OF_YOUR_ARM64_DARWIN_TAR_GZ"
    else
      url "https://github.com/pphlx/pphlx/releases/download/v1.0.0/pphlx-darwin-amd64.tar.gz"
      sha256 "REPLACE_WITH_SHA256_OF_YOUR_AMD64_DARWIN_TAR_GZ"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/pphlx/pphlx/releases/download/v1.0.0/pphlx-linux-arm64.tar.gz"
      sha256 "REPLACE_WITH_SHA256_OF_YOUR_ARM64_LINUX_TAR_GZ"
    else
      url "https://github.com/pphlx/pphlx/releases/download/v1.0.0/pphlx-linux-amd64.tar.gz"
      sha256 "REPLACE_WITH_SHA256_OF_YOUR_AMD64_LINUX_TAR_GZ"
    end
  end

  def install
    bin.install "pphlx"
  end

  test do
    system "#{bin}/pphlx", "--version"
  end
end
