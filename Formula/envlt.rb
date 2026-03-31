class Envlt < Formula
  desc "Local-first encrypted environment variable manager"
  homepage "https://github.com/obsidia-systems/envlt"
  url "https://github.com/obsidia-systems/envlt/archive/refs/tags/v0.1.7.tar.gz"
  sha256 "73907590c95b05b170c7bc917b81bf89c4dd0d38e56885159f3081a1d14e622d"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/envlt-cli")
  end

  test do
    assert_match "envlt", shell_output("#{bin}/envlt --help")
  end
end
