class Envlt < Formula
  desc "Local-first encrypted environment variable manager"
  homepage "https://github.com/obsidia-systems/envlt"
  url "https://github.com/obsidia-systems/envlt/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "69774fa96f7786c98b3271ebc070734badd684208d16afe77dd3abd6e7e7320d"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/envlt-cli")
  end

  test do
    assert_match "envlt", shell_output("#{bin}/envlt --help")
  end
end
