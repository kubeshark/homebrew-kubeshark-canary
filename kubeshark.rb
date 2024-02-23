# typed: false
# frozen_string_literal: true

class Kubeshark < Formula
  desc ""
  homepage "https://github.com/kubeshark/kubeshark"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshark/kubeshark-canary/releases/download/v0.5.0/kubeshark_darwin_arm64"
      sha256 "5d30d2d7dabe8bb54acfe25e3b184cd4fe76da8271cd7257a167e38986619801"

      def install
        bin.install "kubeshark_darwin_arm64" => "kubeshark"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshark/kubeshark-canary/releases/download/v0.5.0/kubeshark_darwin_amd64"
      sha256 "9929d2aa5b6419cca802e9cf620f5105dff8eef31de82901b3bd179e4e6d2ef9"

      def install
        bin.install "kubeshark_darwin_amd64" => "kubeshark"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshark/kubeshark-canary/releases/download/v0.5.0/kubeshark_linux_amd64"
      sha256 "f1f1db7c605493532525016945d63cfb24cf7fc5105dfc70dcbea27d0dc35893"

      def install
        bin.install "kubeshark_linux_amd64" => "kubeshark"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshark/kubeshark-canary/releases/download/v0.5.0/kubeshark_linux_arm64"
      sha256 "52433a13c3ae962e0add1d4ec9b93f7f21e383aea68ba328e3ae068fa2e4d441"

      def install
        bin.install "kubeshark_linux_arm64" => "kubeshark"
      end
    end
  end
end
