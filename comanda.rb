class Comanda < Formula
  desc "Chain of Models and Actions - Command-line LLM orchestration engine"
  homepage "https://github.com/kris-hansen/comanda"
  url "https://github.com/kris-hansen/comanda/archive/refs/tags/v0.0.68.tar.gz"
  sha256 "3afdf86e847e8ff0b3a4222a073f05e938d7953866f6f71744578dc63c734c43"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/comanda", "version"
  end
end
