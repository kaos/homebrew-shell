class Ticktick < Formula
  desc "JSON in your Bash scripts"
  homepage "https://github.com/kristopolous/TickTick"
  url "https://github.com/kristopolous/TickTick/archive/1.0.tar.gz"
  sha256 "7e881e29ffae5bd21db93be7bba612fe7563bbf037e85ee410ad22848d033a34"
  head "https://github.com/kristopolous/TickTick.git"

  def install
    bin.install "ticktick.sh"
    prefix.install "tests"
  end

  def caveats
    <<-EOS.undent

    Use ticktick by sourcing it right at the top of your bash script:

        #!/bin/bash
        . ticktick.sh

    EOS
  end

  test do
    system "#{prefix}/tests/runall.sh"
  end
end
