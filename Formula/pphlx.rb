class Pphlx < Formula
  desc "PPHLX Compiler CLI for PHP Component-Driven Full-Stack Web Development"
  homepage "https://pphlx.org"
  version "1.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pphlx/pphlx/releases/download/v1.1.7/pphlx-darwin-arm64.tar.gz"
      sha256 "48635d1b398aa8ca58b355bb619c2338c24415c1f79390c68ff7972bc6267aa1"

      def install
        bin.install "pphlx"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pphlx/pphlx/releases/download/v1.1.7/pphlx-darwin-amd64.tar.gz"
      sha256 "43ebf92d371ac1ec7041f5a62aabc13f5261223facbe3b1af52e66bf724b03e0"

      def install
        bin.install "pphlx"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pphlx/pphlx/releases/download/v1.1.7/pphlx-linux-arm64.tar.gz"
      sha256 "ac5db1e70ff7c9203394037ae4c53d4207e618bae7d15d8ecce638b833a7f72f"

      def install
        bin.install "pphlx"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pphlx/pphlx/releases/download/v1.1.7/pphlx-linux-amd64.tar.gz"
      sha256 "4485f06753e1a47c740aaba278a87605fd388111c4681ea8a0caa985d33b6e2c"
      def install
        bin.install "pphlx"
      end
    end
  end

  test do
    system "#{bin}/pphlx", "--version"
  end
end
