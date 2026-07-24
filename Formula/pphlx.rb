class Pphlx < Formula
  desc "PPHLX Compiler CLI for PHP Component-Driven Full-Stack Web Development"
  homepage "https://pphlx.org"
  version "1.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pphlx/pphlx/releases/download/v1.1.3/pphlx-darwin-arm64.tar.gz"
      sha256 "6e1f2ab04bee5bb6a5ee26ad67f3b2e145e0f54df0677bd9fac1ba667b609031"

      def install
        bin.install "pphlx"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pphlx/pphlx/releases/download/v1.1.3/pphlx-darwin-amd64.tar.gz"
      sha256 "4409143488e2998f104d4b73ca39e850de9001298052e250da8e4e0affd1c2df"

      def install
        bin.install "pphlx"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pphlx/pphlx/releases/download/v1.1.3/pphlx-linux-arm64.tar.gz"
      sha256 "1aa2c67ee839cf73cdd1fd5f033dc9fbc42812f7cd760439ea8e8a76448e48c5"

      def install
        bin.install "pphlx"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pphlx/pphlx/releases/download/v1.1.3/pphlx-linux-amd64.tar.gz"
      sha256 "844b1d7f0d2f97259d7b9d5d461689a5c3927fe0de7b27a89264cc18c8a5a9bf"

      def install
        bin.install "pphlx"
      end
    end
  end

  test do
    system "#{bin}/pphlx", "--version"
  end
end
