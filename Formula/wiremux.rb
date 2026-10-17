class Wiremux < Formula
  desc "Maps Chat Completions, Messages, Responses, Gemini, and Converse through one IR"
  homepage "https://github.com/wiremuxhq/wiremux"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.5/wiremux-aarch64-apple-darwin.tar.gz"
      sha256 "9df36d56f4dc1984327bdf83ededbf69b16bc3006c1619a877c4ea246e22e63d"
    end
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.5/wiremux-x86_64-apple-darwin.tar.gz"
      sha256 "3d8ecc41a182a5fa99709488f60f62c4748fb0ebd2084486e3c209e058f05b2b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.5/wiremux-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3dc49c72c288ae11c6feaf0b532e0463d20f5ee3d5ae7fb1b0c87259be125d66"
    end
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.5/wiremux-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "29328fb14ade59911679cd49c0f86604d0d5d32ba4d29e00d48c141ab4e15ca4"
    end
  end

  def install
    bin.install "wiremux"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiremux --version")
  end
end
