class Envlt < Formula
  desc "Local-first encrypted environment variable manager"
  homepage "https://github.com/obsidia-systems/envlt"
  url "https://github.com/obsidia-systems/envlt/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "a65345e6eaedf9ea6156da26b631a4faa493aa45f00883850419a34621ee667c"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/envlt-cli")
  end

  test do
    assert_match "envlt", shell_output("#{bin}/envlt --help")
  end
end
