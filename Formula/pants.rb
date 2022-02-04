class Pants < Formula
  desc "Pants shim script, to invoke your local `pants` bootstrap script."
  homepage "https://github.com/kaos/pants-shim"
  url "https://github.com/kaos/pants-shim/archive/refs/tags/0.1.tar.gz"
  sha256 "1199a68b1bea2b8b6ded7f0acc4a4c228403e4ab89d517ba585a17d42dcedbce"
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
