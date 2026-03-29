class Envlt < Formula
  desc "Local-first encrypted environment variable manager"
  homepage "https://github.com/obsidia-systems/envlt"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/obsidia-systems/envlt/releases/download/v0.1.2/envlt-macos-aarch64.tar.gz"
      sha256 "https://github.com/obsidia-systems/envlt/releases/download/v0.1.2/envlt-macos-aarch64.tar.gz.sha256"
    end

    on_intel do
      url "https://github.com/obsidia-systems/envlt/releases/download/v0.1.2/envlt-macos-x86_64.tar.gz"
      sha256 "https://github.com/obsidia-systems/envlt/releases/download/v0.1.2/envlt-macos-x86_64.tar.gz.sha256"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/obsidia-systems/envlt/releases/download/v0.1.2/envlt-linux-aarch64.tar.gz"
      sha256 "https://github.com/obsidia-systems/envlt/releases/download/v0.1.2/envlt-linux-aarch64.tar.gz.sha256"
    end

    on_intel do
      url "https://github.com/obsidia-systems/envlt/releases/download/v0.1.2/envlt-linux-x86_64.tar.gz"
      sha256 "https://github.com/obsidia-systems/envlt/releases/download/v0.1.2/envlt-linux-x86_64.tar.gz.sha256"
    end
  end

  def install
    bin.install "envlt"
  end

  test do
    assert_match "envlt", shell_output("#{bin}/envlt --help")
  end
end
