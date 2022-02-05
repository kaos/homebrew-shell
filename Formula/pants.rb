class Pants < Formula
  desc "Pants shim script, to invoke your local `pants` bootstrap script."
  homepage "https://github.com/kaos/pants-shim"
  url "https://github.com/kaos/pants-shim/archive/refs/tags/0.2.tar.gz"
  sha256 "500cdc7ee6428845cdfa953b7da0eb4f2d044ac5380db6ec525c261308afadee"
  head "https://github.com/kaos/pants-shim.git"

  def install
    bin.install "src/pants.sh" => "pants"
  end

  def caveats
    <<~EOS

    Running this shim for the Pants Build System still requires that you have setup the `pants`
    bootstrap script in your repository root, and that you invoke this shim from within such a
    repository.

    EOS
  end
end
