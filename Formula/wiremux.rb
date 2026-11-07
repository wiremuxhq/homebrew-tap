class Wiremux < Formula
  desc "Maps Chat Completions, Messages, Responses, Gemini, and Converse through one IR"
  homepage "https://github.com/wiremuxhq/wiremux"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.12/wiremux-aarch64-apple-darwin.tar.gz"
      sha256 "185be66d836e99016493223c8fde701d4d50a72cb0a9380af7081906dc4905db"
    end
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.12/wiremux-x86_64-apple-darwin.tar.gz"
      sha256 "a05b321a03239cff116298d236e0cbf6b984855ff93244be6921dc0abd41eef1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.12/wiremux-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "173088c886c1177e21b6d947474875735ed0e4fa47298696aa12c8f88c83cf47"
    end
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.12/wiremux-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b5d40530913ad6c71e67c5306aeb6a82dfa0b970e16b721550440f87a5698f75"
    end
  end

  def install
    bin.install "wiremux"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiremux --version")
  end
end
