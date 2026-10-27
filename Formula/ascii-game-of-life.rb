class AsciiGameOfLife < Formula
  desc "Full-color braille Conway's Game of Life for your terminal"
  homepage "https://github.com/pvbaudin/ascii-game-of-life"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pvbaudin/ascii-game-of-life/releases/download/v0.1.0/ascii-game-of-life-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "2128ab8f309c8612efd37915d601384990e48e671f1722fdb1310fe228a43569"
    end
    on_intel do
      url "https://github.com/pvbaudin/ascii-game-of-life/releases/download/v0.1.0/ascii-game-of-life-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "fe8c461599d87b0572ca13e314741b8184afddf31c92fb48b8f65cba8f16f79c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pvbaudin/ascii-game-of-life/releases/download/v0.1.0/ascii-game-of-life-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "00d9cbf844608a6abfe09c0f8dfce94f95a38e0f411696cad1866abe2bee3364"
    end
    on_intel do
      url "https://github.com/pvbaudin/ascii-game-of-life/releases/download/v0.1.0/ascii-game-of-life-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "904d4a98c947dd38318c169010d9163e7cb5ee20c1a16a76f99b8838dfa153ca"
    end
  end

  def install
    bin.install "life"
  end

  test do
    assert_match "life #{version}", shell_output("#{bin}/life --version")
  end
end
