class Comanda < Formula
  desc "Chain of Models and Actions - Command-line LLM orchestration engine"
  homepage "https://github.com/kris-hansen/comanda"
  url "https://github.com/kris-hansen/comanda/archive/refs/tags/v0.0.97.tar.gz"
  sha256 "6bd7a91f0af227ba6cc007316002eec0621c120b8b01af86276fed7150b56d88"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X github.com/kris-hansen/comanda/cmd.version=v#{version}")
  end

  test do
    system "#{bin}/comanda", "version"
  end
end
