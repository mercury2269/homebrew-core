class Monolith < Formula
  desc "CLI tool for saving complete web pages as a single HTML file"
  homepage "https://github.com/Y2Z/monolith"
  url "https://github.com/Y2Z/monolith/archive/v2.6.1.tar.gz"
  sha256 "dc08e6fa786c2cdfc7a8f6c307022c368d875c172737b695222c2b2f3bfe2a72"
  license "CC0-1.0"

  bottle do
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "f8d25cc101ab57a7b2392d748815de0d2dbf36654a4ef592b5eedf992846f17a"
    sha256 cellar: :any_skip_relocation, big_sur:       "f665108ed7bbba69ffd99220d6d23d6baeb380fee9ce569eaef11b510c8affec"
    sha256 cellar: :any_skip_relocation, catalina:      "03eead42ea9e5f888b968147d1975ffaa04ad470747b985c3920dfe5724f9c62"
    sha256 cellar: :any_skip_relocation, mojave:        "3794386713e0d813abbcbc6377c943421efb94b8dde4ce01729bd8a88d206af2"
  end

  depends_on "pkg-config" => :build
  depends_on "rust" => :build
  depends_on "openssl@1.1"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"monolith", "https://lyrics.github.io/db/P/Portishead/Dummy/Roads/"
  end
end
