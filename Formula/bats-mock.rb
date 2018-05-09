class BatsMock < Formula
  desc "Mocking/stubbing library for Bats"
  homepage "https://github.com/jasonkarns/bats-mock"
  url "https://github.com/jasonkarns/bats-mock/archive/v1.0.1.tar.gz"
  sha256 "af89a0861e2a84edfcc39c72ba5da5b9201a5bc5e0e621ee2b9ef10c8adb0260"
  head "https://github.com/jasonkarns/bats-mock.git"
  depends_on "bats"

  def install
    mkdir "bats-mock"
    mv "stub.bash", "bats-mock/"
    mv "binstub", "bats-mock/"
    lib.install "bats-mock"
  end

  def caveats
    <<~EOS

    To load the bats-mock lib in your bats test:

        load '#{HOMEBREW_PREFIX}/lib/bats-mock/stub.bash'

    EOS
  end

  test do
    tests = <<-EOS.undent
      load '#{HOMEBREW_PREFIX}/lib/bats-mock/stub.bash'
      @test "uname -s" {
        stub uname '-s : echo Stubbed'
        run uname -s
        [ "$status" -eq 0 ]
        [ "$output" = "Stubbed" ]
      }
    EOS

    (testpath/"tests.bats").write(tests)
    system "bats", testpath
  end
end
