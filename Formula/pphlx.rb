class Pphlx < Formula
  desc "PPHLX Compiler CLI for PHP Component-Driven Full-Stack Web Development"
  homepage "https://pphlx.org"
  version "1.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pphlx/pphlx/releases/download/v1.1.5/pphlx-darwin-arm64.tar.gz"
      sha256 "c167f09db07c1b2002e507712a344df512f76d39d82eb49d4801183b4febea75"

      def install
        bin.install "pphlx"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pphlx/pphlx/releases/download/v1.1.5/pphlx-darwin-amd64.tar.gz"
      sha256 "aeb52f4d4c5f2f73c15c6d1c8fffbcc8e8d1d9b3c7a32e329d5d581a0ba5d6b2"

      def install
        bin.install "pphlx"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pphlx/pphlx/releases/download/v1.1.5/pphlx-linux-arm64.tar.gz"
      sha256 "8b54fdf4f335a9296bd7f9fd5a73f2c6ad4d3e8ff3d3bf4848d220416c51323c"

      def install
        bin.install "pphlx"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pphlx/pphlx/releases/download/v1.1.5/pphlx-linux-amd64.tar.gz"
      sha256 "b93981dab184ee8050f13b190bd436b205d19c4e936750ced8102341d692de6d"
      def install
        bin.install "pphlx"
      end
    end
  end

  test do
    system "#{bin}/pphlx", "--version"
  end
end
