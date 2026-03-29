class Envlt < Formula
  desc "Local-first encrypted environment variable manager"
  homepage "https://github.com/obsidia-systems/envlt"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/obsidia-systems/envlt/releases/download/v0.1.2/envlt-macos-aarch64.tar.gz"
      sha256 "70b7fcc45a399f3ce480d47497e545eb8865f1902e076d7d8ca20451b9169536"
    end

    on_intel do
      url "https://github.com/obsidia-systems/envlt/releases/download/v0.1.2/envlt-macos-x86_64.tar.gz"
      sha256 "2015c5fa14abdcfd4c9a6b17e1c66d83a8eb5d5edb714179d37ba70a33e87265"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/obsidia-systems/envlt/releases/download/v0.1.2/envlt-linux-aarch64.tar.gz"
      sha256 "cffc8047a78f159c3278d131f0ac7c36948cb396c7a72c370621792edcbcfcb4"
    end

    on_intel do
      url "https://github.com/obsidia-systems/envlt/releases/download/v0.1.2/envlt-linux-x86_64.tar.gz"
      sha256 "b99257b6acbdf18406edca8edfe9edeeb3fe114b8ca87351be31bf29a0d607a4"
    end
  end

  def install
    bin.install "envlt"
  end

  test do
    assert_match "envlt", shell_output("#{bin}/envlt --help")
  end
end
