class Comanda < Formula
  desc "Chain of Models and Actions - Command-line LLM orchestration engine"
  homepage "https://github.com/kris-hansen/comanda"
  url "https://github.com/kris-hansen/comanda/archive/refs/tags/v0.0.106.tar.gz"
  sha256 "1b8a2a83013ddee6e3165232a5a6111d5f17c48b9d0c8b7af7f888c6b3b31ad5"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X github.com/kris-hansen/comanda/cmd.version=v#{version}")
  end

  test do
    system "#{bin}/comanda", "version"
  end
end
