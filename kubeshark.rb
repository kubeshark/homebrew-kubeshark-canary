# typed: false
# frozen_string_literal: true

class Kubeshark < Formula
  desc ""
  homepage "https://github.com/kubeshark/kubeshark"
  version "v0.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshark/kubeshark/releases/download/v0.3.2/kubeshark_darwin_arm64"
      sha256 "16012b612b70a863e53e0013874e02ca08adabf35ed3e4e3c1f473cff0dfb705"

      def install
        bin.install "kubeshark"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshark/kubeshark/releases/download/v0.3.2/kubeshark_darwin_amd64"
      sha256 "b04569c9c94bb9709a290f35d76a98d6fb588711ec8fbb26a1bc26c6ec4121b8"

      def install
        bin.install "kubeshark"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshark/kubeshark/releases/download/v0.3.2/kubeshark_linux_amd64"
      sha256 "68d2fba02f860ffc83fb14e633e47399ff8c0222039fafbacbfba6598270bfc5"

      def install
        bin.install "kubeshark"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshark/kubeshark/releases/download/v0.3.2/kubeshark_linux_arm64"
      sha256 "a9416686b0eceba484a896d169ea7de63c3d8521deaac8ef525ec8d70b032d2d"

      def install
        bin.install "kubeshark"
      end
    end
  end
end
