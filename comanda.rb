class Comanda < Formula
  desc "Chain of Models and Actions - Command-line LLM orchestration engine"
  homepage "https://github.com/kris-hansen/comanda"
  url "https://github.com/kris-hansen/comanda/archive/refs/tags/v0.0.66.tar.gz"
  sha256 "5387ac41916bb24c4060b04eade2c61d4a6e6513889a503a35cdc4a7634652c6"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/comanda", "version"
  end
end
