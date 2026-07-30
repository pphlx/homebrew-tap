class Pphlx < Formula
  desc "PPHLX Compiler CLI for PHP Component-Driven Full-Stack Web Development"
  homepage "https://pphlx.org"
  version "1.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pphlx/pphlx/releases/download/v1.1.6/pphlx-darwin-arm64.tar.gz"
      sha256 "3a5e5fd1d55e5df5d39d12f6570ec24d8f9342a2bdaaded4f563b008d3082bc0"

      def install
        bin.install "pphlx"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pphlx/pphlx/releases/download/v1.1.6/pphlx-darwin-amd64.tar.gz"
      sha256 "a87d0a825ba1e6e60f54a8c6948c6cb51f9d70b49ff500faeef9ad76287cf176"

      def install
        bin.install "pphlx"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pphlx/pphlx/releases/download/v1.1.6/pphlx-linux-arm64.tar.gz"
      sha256 "8b23cb7d17ece488c755dd49df0f1b4f579cb01d35e9872b524e308aa2bbeb7e"

      def install
        bin.install "pphlx"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pphlx/pphlx/releases/download/v1.1.6/pphlx-linux-amd64.tar.gz"
      sha256 "367eb33a0ac62a44827122e2768f561d5aa50e20f59a168fcdbd188cceae30c4"
      def install
        bin.install "pphlx"
      end
    end
  end

  test do
    system "#{bin}/pphlx", "--version"
  end
end
