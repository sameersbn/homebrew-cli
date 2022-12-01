class Hello < Formula
  desc "hello"
  homepage "https://github.com/sameersbn/test-repo"
  version "0.0.43"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sameersbn/test-repo/releases/download/v#{version}/hello_macOS_arm64"
      sha256 "3d0a18afb6352cf85b9845f9a32959d8ed1211e697ef0856a11e9e2bceb0594c"

      def install
        bin.install "hello_macOS_arm64" => "hello"
        chmod 0555, bin/"hello"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sameersbn/test-repo/releases/download/v#{version}/hello_macOS_amd64"
      sha256 "62086e8668765f490845c654b370529f3c0c842b8aefba8879614475bc62d9fa"

      def install
        bin.install "hello_macOS_amd64" => "hello"
        chmod 0555, bin/"hello"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sameersbn/test-repo/releases/download/v#{version}/hello_linux_arm64"
      sha256 "00dc3714fcf8040fdb55bce38d8371c2cf9d017b7b8a15eb15c4b02759e0d4da"

      def install
        bin.install "hello_linux_arm64" => "hello"
        chmod 0555, bin/"hello"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sameersbn/test-repo/releases/download/v#{version}/hello_linux_amd64"
      sha256 "3c71cc68fc99c084e9f193213d8b5abfaee8d7b1802271f5ec9789accdbb7f35"

      def install
        bin.install "hello_linux_amd64" => "hello"
        chmod 0555, bin/"hello"
      end
    end
  end
end
