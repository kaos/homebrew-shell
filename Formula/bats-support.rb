class BatsSupport < Formula
  desc "Supporting library for Bats test helpers"
  homepage "https://github.com/ztombol/bats-support"
  url "https://github.com/ztombol/bats-support/archive/v0.3.0.tar.gz"
  sha256 "7815237aafeb42ddcc1b8c698fc5808026d33317d8701d5ec2396e9634e2918f"
  head "https://github.com/ztombol/bats-support.git"
  depends_on "bats-core"

  def install
    mkdir "bats-support"
    mv "load.bash", "bats-support/"
    mv "src", "bats-support/"
    mv "test", "bats-support/"
    lib.install "bats-support"
    ohai "Use `load '#{HOMEBREW_PREFIX}/lib/bats-support/load.bash'` in your bats test to load this library."
  end

  test do
    system "bats", "#{lib}/bats-support/test"
  end
end
