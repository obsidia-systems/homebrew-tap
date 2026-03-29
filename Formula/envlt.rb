class Envlt < Formula
  desc "Local-first encrypted environment variable manager"
  homepage "https://github.com/obsidia-systems/envlt"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/obsidia-systems/envlt/releases/download/v0.1.2/envlt-macos-aarch64.tar.gz"
      sha256 "b81080510d5a9da096d1304c0124c02cc9623251c1f7628f3b0a89a8ee3d20ac"
    end

    on_intel do
      url "https://github.com/obsidia-systems/envlt/releases/download/v0.1.2/envlt-macos-x86_64.tar.gz"
      sha256 "623752e1c65da636d56a874cdbcab194cf03a0347640d34fc5558811b612e60b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/obsidia-systems/envlt/releases/download/v0.1.2/envlt-linux-aarch64.tar.gz"
      sha256 "08f5458b32a07b6aaba8b41e4b384e33bbda8d748d825be40bf3515c099e2152"
    end

    on_intel do
      url "https://github.com/obsidia-systems/envlt/releases/download/v0.1.2/envlt-linux-x86_64.tar.gz"
      sha256 "ef9d6007ce6359ee9282b1ebeb15d406817d13838f8bfb9b4253e273a3be1f2f"
    end
  end

  def install
    bin.install "envlt"
  end

  test do
    assert_match "envlt", shell_output("#{bin}/envlt --help")
  end
end
