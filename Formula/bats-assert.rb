class BatsAssert < Formula
  desc "Common assertions for Bats"
  homepage "https://github.com/ztombol/bats-assert"
  url "https://github.com/ztombol/bats-assert/archive/v0.3.0.tar.gz"
  sha256 "0d447e4efc488cf06ebed3dea5b55e1fb909e572fb3576434194a09485f8a7f3"
  depends_on "bats-support"

  def install
    mkdir "bats-assert"
    mv "load.bash", "bats-assert/"
    mv "src", "bats-assert/"
    mv "test", "bats-assert/"
    lib.install "bats-assert"
    ohai "Use `load '/usr/local/lib/bats-assert/load'` in your bats test to load this library."
  end

  test do
    ENV["TEST_DEPS_DIR"] = "/usr/local/lib"
    system "bats", "#{lib}/bats-assert/test"
  end
end
