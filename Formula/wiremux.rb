class Wiremux < Formula
  desc "Maps Chat Completions, Messages, Responses, Gemini, and Converse through one IR"
  homepage "https://github.com/wiremuxhq/wiremux"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.8/wiremux-aarch64-apple-darwin.tar.gz"
      sha256 "00256f3c8b2b4faf0716c2b2249d2de2110cf3c436107910cf43f5e08d35ca33"
    end
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.8/wiremux-x86_64-apple-darwin.tar.gz"
      sha256 "c4b88bb4ea6b273b019f35de6e2bfed89b88a4930e0fffd9ee3a82c8ee476572"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.8/wiremux-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c70a0bd64622a52717411e52123c57841b1664bda8234bedfd91da11cfc249fe"
    end
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.8/wiremux-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7140244e1fcf8cf74d0f8c21bcad1c2afa7c4f3918a72c7850e696c0378cff21"
    end
  end

  def install
    bin.install "wiremux"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiremux --version")
  end
end
