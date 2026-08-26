class BatsMock < Formula
  desc "Mocking/stubbing library for Bats"
  homepage "https://github.com/mh182/bats-mock"
  url "https://github.com/mh182/bats-mock/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "b0680655e43a5765e7e05819e3ac0414c1aaf3fce46227acfee669602e974d2a"
  head "https://github.com/mh182/bats-mock.git", branch: "main"

  depends_on "bats-core"

  def install
    (lib/"bats-mock").install "load.bash", "src", "test"
  end

  def caveats
    <<~EOS

      To load the bats-mock lib in your bats test:

        load '#{HOMEBREW_PREFIX}/lib/bats-mock/load.bash'

    EOS
  end

  test do
    system "bats", lib/"bats-mock/test"

    tests = <<~EOS
      bats_load_library bats-mock

      @test "mock_create sets output" {
        mock="$(mock_create)"
        mock_set_output "$mock" "Stubbed"
        run "$mock"
        [ "$status" -eq 0 ]
        [ "$output" = "Stubbed" ]
      }
    EOS

    (testpath/"tests.bats").write(tests)
    ENV["BATS_LIB_PATH"] = lib.to_s
    system "bats", testpath/"tests.bats"
  end
end
