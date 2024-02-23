# typed: false
# frozen_string_literal: true

class Kubeshark < Formula
  desc ""
  homepage "https://github.com/kubeshark/kubeshark"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshark/kubeshark/releases/download/v0.4.0/kubeshark_darwin_arm64"
      sha256 "e9a2b6aabdcd74157ad2c837698bedc4639b2156daa15ec0d93f7021b65e317e"

      def install
        bin.install "kubeshark_darwin_arm64" => "kubeshark"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshark/kubeshark/releases/download/v0.4.0/kubeshark_darwin_amd64"
      sha256 "e5a8068e599bc7a498f57a0dfa79e098a634696f24fb1f4106ad71b8403b2966"

      def install
        bin.install "kubeshark_darwin_amd64" => "kubeshark"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshark/kubeshark/releases/download/v0.4.0/kubeshark_linux_amd64"
      sha256 "667eaa210fbcafd17d82946ce089e3327665bf13a1c05d459b5d89594abc20e8"

      def install
        bin.install "kubeshark_linux_amd64" => "kubeshark"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshark/kubeshark/releases/download/v0.4.0/kubeshark_linux_arm64"
      sha256 "9da09568e28df1b61ac16dd616e1a1102dfe644e9b9c9de4283d76ed2bcb8b12"

      def install
        bin.install "kubeshark_linux_arm64" => "kubeshark"
      end
    end
  end
end
