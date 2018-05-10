class BatsFile < Formula
  desc "Common filesystem assertions for Bats"
  homepage "https://github.com/ztombol/bats-file"
  url "https://github.com/ztombol/bats-file/archive/v0.1.0.tar.gz"
  sha256 "3f5afee0d9f77ff2bf255c43904fc8c23350d858c0e8a399c714c67f42181842"
  head "https://github.com/ztombol/bats-file.git"
  depends_on "bats-support"

  def install
    mkdir "bats-file"
    mv "load.bash", "bats-file/"
    mv "src", "bats-file/"
    mv "test", "bats-file/"
    lib.install "bats-file"
  end

  def caveats
    <<~EOS

    To load the bats-file lib in your bats test:

        load '#{HOMEBREW_PREFIX}/lib/bats-support/load.bash'
        load '#{HOMEBREW_PREFIX}/lib/bats-file/load.bash'

    EOS
  end

  test do
    ENV["TEST_DEPS_DIR"] = "#{HOMEBREW_PREFIX}/lib"
    system "bats", "#{lib}/bats-file/test"
  end
end
