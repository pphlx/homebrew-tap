class Pphlx < Formula
  desc "PPHLX Compiler CLI for PHP Component-Driven Full-Stack Web Development"
  homepage "https://pphlx.dev"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pphlx/pphlx/releases/download/v1.1.0/pphlx-darwin-arm64.tar.gz"
      sha256 "66fe53524f0a3f3f5c5551c0e059a74ad0879192c63c969a224ad9259218c1af"

      def install
        bin.install "pphlx-macos-arm64" => "pphlx"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pphlx/pphlx/releases/download/v1.1.0/pphlx-darwin-amd64.tar.gz"
      sha256 "13173a68a36c8ef379398649f60b9335898f0f04f342f6cb07a7c24b0d6279c5"

      def install
        bin.install "pphlx-macos-amd64" => "pphlx"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pphlx/pphlx/releases/download/v1.1.0/pphlx-linux-arm64.tar.gz"
      sha256 "58956587a0c978c6fbf44c27f3a11377d9cbba88731ca84926524ec872bc92a6"

      def install
        bin.install "pphlx-linux-arm64" => "pphlx"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pphlx/pphlx/releases/download/v1.1.0/pphlx-linux-amd64.tar.gz"
      sha256 "d2886f718250ca6f63223c7a59ab13f582913337c35dfe67a52d14f1c5ce390b"

      def install
        bin.install "pphlx-linux-amd64" => "pphlx"
      end
    end
  end

  test do
    system "#{bin}/pphlx", "--version"
  end
end
