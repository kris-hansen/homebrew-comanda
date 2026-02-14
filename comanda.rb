class Comanda < Formula
  desc "Chain of Models and Actions - Command-line LLM orchestration engine"
  homepage "https://github.com/kris-hansen/comanda"
  url "https://github.com/kris-hansen/comanda/archive/refs/tags/v0.0.127.tar.gz"
  sha256 "aef83dbd0fcf2eb260c78d94a36039d446b69946d872aa37d5e18c6f73890a19"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X github.com/kris-hansen/comanda/cmd.version=v#{version}")
  end

  test do
    system "#{bin}/comanda", "version"
  end
end
