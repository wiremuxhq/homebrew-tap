class Wiremux < Formula
  desc "Maps Chat Completions, Messages, Responses, Gemini, and Converse through one IR"
  homepage "https://github.com/wiremuxhq/wiremux"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.13/wiremux-aarch64-apple-darwin.tar.gz"
      sha256 "258f7964890b4dc60d0f5ec5bcf60c2494787192e147d8327a59141921fd1e26"
    end
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.13/wiremux-x86_64-apple-darwin.tar.gz"
      sha256 "7d48e7f04b3332f5ba45d2dfae934c1748806a9c91a2641222d7b189a1ee9c24"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.13/wiremux-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6cdf738aaa5a54ff7760b1f33a914a6e185d33bc11c22e89401c40e9dc5363fe"
    end
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.13/wiremux-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1e4a0eb26ce7c84acc7ef1daced9610d5de67f2c9a870f39f9f7172cf4436c5f"
    end
  end

  def install
    bin.install "wiremux"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiremux --version")
  end
end
