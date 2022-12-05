# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hello < Formula
  desc "Hello CLI"
  homepage "https://github.com/sameersbn/test-repo"
  version "0.0.54"
  license "Apache 2.0"
  depends_on :macos

  on_macos do
    url "https://github.com/sameersbn/test-repo/releases/download/v0.0.54/hello_macOS_amd64"
    sha256 "43b310eed156f9a305b15e1a8291a1817683f0737c9aa5e17fbdd204769f42d6"

    def install
      bin.install "hello_macOS_amd64" => "hello"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Hello
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  def post_install
    generate_completions_from_executable(bin/"hello", shells: [:bash, :zsh])
  end
end
