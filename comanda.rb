class Comanda < Formula
  desc "Chain of Models and Actions - Command-line LLM orchestration engine"
  homepage "https://github.com/kris-hansen/comanda"
  url "https://github.com/kris-hansen/comanda/archive/refs/tags/v0.0.117.tar.gz"
  sha256 "32ee4c915393aabddb8d061cbad6e0ef375912673fe47390a1c57f7b67adbf16"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X github.com/kris-hansen/comanda/cmd.version=v#{version}")
  end

  test do
    system "#{bin}/comanda", "version"
  end
end
