class BatsFile < Formula
  desc "Common filesystem assertions for Bats"
  homepage "https://github.com/ztombol/bats-file"
  url "https://github.com/ztombol/bats-file/archive/v0.2.0.tar.gz"
  sha256 "1fa26407a68f4517cf9150d4763779ee66946a68eded33fa182ddf6a795c5062"
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
