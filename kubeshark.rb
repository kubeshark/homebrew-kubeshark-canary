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
      url "https://github.com/kubeshark/kubeshark/releases/download/v52.1.50/kubeshark_darwin_amd64"
      sha256 "e9a4c0a538fd3143123753b7861634e2a6f8d182b0c842306d0a0ac097d1cb28"

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
