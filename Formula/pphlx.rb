class Pphlx < Formula
  desc "PPHLX Compiler CLI for PHP Component-Driven Full-Stack Web Development"
  homepage "https://pphlx.org"
  version "1.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pphlx/pphlx/releases/download/v1.1.2/pphlx-darwin-arm64.tar.gz"
      sha256 "a2f0432e0872775062c4766595cb7d7ef5817fa94ffc14646d253a62ce5706a5"

      def install
        bin.install "pphlx"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pphlx/pphlx/releases/download/v1.1.2/pphlx-darwin-amd64.tar.gz"
      sha256 "fd45fd09796971da37b965e2a4a25a7953533eee3490ae256f64cc59e1122c4d"

      def install
        bin.install "pphlx"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pphlx/pphlx/releases/download/v1.1.2/pphlx-linux-arm64.tar.gz"
      sha256 "c2841401838f3bc9c98774ff26594c041596834418bec22ba7f54c59ebb6e134"

      def install
        bin.install "pphlx"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pphlx/pphlx/releases/download/v1.1.2/pphlx-linux-amd64.tar.gz"
      sha256 "0e867596167939abf8a2e276867a76349178ff72fa7fc7bce0fc93dabb2faafa"

      def install
        bin.install "pphlx"
      end
    end
  end

  test do
    system "#{bin}/pphlx", "--version"
  end
end
