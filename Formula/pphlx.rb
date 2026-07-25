class Pphlx < Formula
  desc "PPHLX Compiler CLI for PHP Component-Driven Full-Stack Web Development"
  homepage "https://pphlx.org"
  version "1.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pphlx/pphlx/releases/download/v1.1.4/pphlx-darwin-arm64.tar.gz"
      sha256 "2f3b304c0e3f685f51037cdba3b6ab56b02edc00f962f02356a8ab3e51d80b82"

      def install
        bin.install "pphlx"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pphlx/pphlx/releases/download/v1.1.4/pphlx-darwin-amd64.tar.gz"
      sha256 "ca1319746b906d88bd1d97cf41d78796a49b8e575993abcb56cb397e9b30098a"

      def install
        bin.install "pphlx"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pphlx/pphlx/releases/download/v1.1.4/pphlx-linux-arm64.tar.gz"
      sha256 "f4a3e68d0b72cf513e2c49712347bf820420c67a304b88039bb16e02b1a41eeb"

      def install
        bin.install "pphlx"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pphlx/pphlx/releases/download/v1.1.4/pphlx-linux-amd64.tar.gz"
      sha256 "de2430c1bf194fff8c899451997dfcc8272aa040b18d927f12ff20e7289075a9"
      def install
        bin.install "pphlx"
      end
    end
  end

  test do
    system "#{bin}/pphlx", "--version"
  end
end
