class Pphlx < Formula
  desc "PPHLX Compiler CLI for PHP Component-Driven Full-Stack Web Development"
  homepage "https://pphlx.org"
  version "1.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pphlx/pphlx/releases/download/v1.1.1/pphlx-darwin-arm64.tar.gz"
      sha256 "a056037d6e8b246ae184eb6ce0dc1869299e23326a7be489e472423677dcfcdf"

      def install
        bin.install "pphlx"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pphlx/pphlx/releases/download/v1.1.1/pphlx-darwin-amd64.tar.gz"
      sha256 "10ea4769b8d83c65decbb0d38f953c0a9c2cb9c25d33238c68f351cc3d942cb3"

      def install
        bin.install "pphlx"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pphlx/pphlx/releases/download/v1.1.1/pphlx-linux-arm64.tar.gz"
      sha256 "341ee69cdb0e14a841706b513353276441fde35686c5ccb3a7b455fe93d0c6a1"

      def install
        bin.install "pphlx"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pphlx/pphlx/releases/download/v1.1.1/pphlx-linux-amd64.tar.gz"
      sha256 "3646211f18c570b5db1458588e97fdde665fb85d49e5d509c77da7a39afde359"

      def install
        bin.install "pphlx"
      end
    end
  end

  test do
    system "#{bin}/pphlx", "--version"
  end
end
