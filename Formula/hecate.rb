require "language/go"

class Hecate < Formula
  desc "The Hex Editor From Hell!"
  homepage "https://github.com/evanmiller/hecate"
  url "https://github.com/evanmiller/hecate.git", :revision => "7ca07b25c4204f1366ad68533388f5f7a8f843cd"
  version "2016-04-09"
  head "https://github.com/evanmiller/hecate.git"

  bottle do
    root_url "https://dl.bintray.com/kaos/bottles"
    cellar :any_skip_relocation
    sha256 "406602e0c14297190e50d1c0633726b6a16d53bdee8230f5046fd73fda38d53d" => :yosemite
  end

  depends_on "go" => :build

  go_resource "github.com/edsrzf/mmap-go" do
    url "https://github.com/edsrzf/mmap-go.git", :revision => "903d080718bd2877583fe1bd0a19c9cd3e2906ff"
  end

  go_resource "github.com/nsf/termbox-go" do
    url "https://github.com/nsf/termbox-go.git", :revision => "362329b0aa6447eadd52edd8d660ec1dff470295"
  end

  go_resource "github.com/mattn/go-runewidth" do
    url "https://github.com/mattn/go-runewidth/archive/v0.0.1.tar.gz"
    sha256 "cbb9dddf80c2f54b6c28feef5b9f04de8bac910c73d7f239a0afe3d6d365029f"
  end

  def install
    ENV["GOPATH"] = buildpath
    Language::Go.stage_deps resources, buildpath/"src"
    system "go", "build", "-o", bin/"hecate"
  end

  test do
    system "echo", "no test here yet"
  end
end
