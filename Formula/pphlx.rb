class Pphlx < Formula
  desc "PPHLX Compiler CLI for PHP Component-Driven Full-Stack Web Development"
  homepage "https://pphlx.org"
  version "1.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pphlx/pphlx/releases/download/v1.1.8/pphlx-darwin-arm64.tar.gz"
      sha256 "74cb87ace8ec1d929cd8a86599b2f1a9c828f7548e44681e4344c4f483ef0cf2"

      def install
        bin.install "pphlx"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pphlx/pphlx/releases/download/v1.1.8/pphlx-darwin-amd64.tar.gz"
      sha256 "b33ae76620bce185ae4536d721b39e67878926cce631afd9e90cc75a2fd38dd3"

      def install
        bin.install "pphlx"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pphlx/pphlx/releases/download/v1.1.8/pphlx-linux-arm64.tar.gz"
      sha256 "a7d2a4dc3567a5fecce1c132c6ac18a2f74ff721617d66c34cbed138c2fce23c"

      def install
        bin.install "pphlx"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pphlx/pphlx/releases/download/v1.1.8/pphlx-linux-amd64.tar.gz"
      sha256 "b62abd1d25b77581a6d473f7651d20bac9df097a607110b99bfe723c055945d1"
      def install
        bin.install "pphlx"
      end
    end
  end

  test do
    system "#{bin}/pphlx", "--version"
  end
end
