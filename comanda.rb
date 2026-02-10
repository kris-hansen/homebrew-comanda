class Comanda < Formula
  desc "Chain of Models and Actions - Command-line LLM orchestration engine"
  homepage "https://github.com/kris-hansen/comanda"
  url "https://github.com/kris-hansen/comanda/archive/refs/tags/v0.0.113.tar.gz"
  sha256 "e306efe07df89c3475af62cfb2a119916231d870847a7409384206f0587c0eb9"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X github.com/kris-hansen/comanda/cmd.version=v#{version}")
  end

  test do
    system "#{bin}/comanda", "version"
  end
end
