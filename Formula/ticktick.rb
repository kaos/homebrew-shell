class Ticktick < Formula
  desc "JSON in your Bash scripts"
  homepage "https://github.com/kristopolous/TickTick"
  url "https://github.com/kristopolous/TickTick/archive/1.0.tar.gz"
  sha256 "3865b096c01366d62cbfea0bc16fc9535386d61c3a6e517d3aa8ec56b9a565c6"
  head "https://github.com/kristopolous/TickTick.git"

  def install
    bin.install "ticktick.sh"
    prefix.install "tests"
  end

  def caveats
    <<~EOS

    Use ticktick by sourcing it right at the top of your bash script:

        #!/bin/bash
        . ticktick.sh

    EOS
  end

  test do
    system "#{prefix}/tests/runall.sh"
  end
end
