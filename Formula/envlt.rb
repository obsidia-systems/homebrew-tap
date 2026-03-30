class Envlt < Formula
  desc "Local-first encrypted environment variable manager"
  homepage "https://github.com/obsidia-systems/envlt"
  url "https://github.com/obsidia-systems/envlt/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "ee63c41beb6dd34b0393fb8ca984edb25ad63e6e091ab13966d14eb418b5c0dc"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/envlt-cli")
  end

  test do
    assert_match "envlt", shell_output("#{bin}/envlt --help")
  end
end
