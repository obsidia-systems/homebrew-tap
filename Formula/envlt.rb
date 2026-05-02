class Envlt < Formula
  desc "Local-first encrypted environment variable manager"
  homepage "https://github.com/obsidia-systems/envlt"
  url "https://github.com/obsidia-systems/envlt/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "0dbc5b17d513f66dd82d533762a2626f306af84646b03f3de15a70a283fdba2a"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/envlt-cli")
  end

  test do
    assert_match "envlt", shell_output("#{bin}/envlt --help")
  end
end
