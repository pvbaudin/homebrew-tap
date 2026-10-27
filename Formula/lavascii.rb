class Lavascii < Formula
  desc "Full-color ASCII lava lamp for your terminal; pipe any text into it"
  homepage "https://github.com/pvbaudin/lavascii"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pvbaudin/lavascii/releases/download/v0.1.0/lavascii-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "584b99002d089b1f05c08e621c3461d39153d7a50fced921181479e313f01529"
    end
    on_intel do
      url "https://github.com/pvbaudin/lavascii/releases/download/v0.1.0/lavascii-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "b59ae4262da81bf7a809dea6aa54e90d22b9288083913768a64a0e586eb9fcbc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pvbaudin/lavascii/releases/download/v0.1.0/lavascii-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "309e4904b49b2546f573398d7588375954196f0dfc0535503e22433b9e24596c"
    end
    on_intel do
      url "https://github.com/pvbaudin/lavascii/releases/download/v0.1.0/lavascii-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4170ad49790a5c248d9a1fcb488697647c8817c0aeb7557beeee82d508b6b949"
    end
  end

  def install
    bin.install "lavascii"
  end

  test do
    assert_match "lavascii #{version}", shell_output("#{bin}/lavascii --version")
  end
end
