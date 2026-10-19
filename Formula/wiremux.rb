class Wiremux < Formula
  desc "Maps Chat Completions, Messages, Responses, Gemini, and Converse through one IR"
  homepage "https://github.com/wiremuxhq/wiremux"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.7/wiremux-aarch64-apple-darwin.tar.gz"
      sha256 "554a3b7586e68c5cc4b616f169bf1409149f4daa3dcf97b9b736bfe2866f0c79"
    end
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.7/wiremux-x86_64-apple-darwin.tar.gz"
      sha256 "1154938cf36ccd4e8379ab93a46fde2dc1ebc597d6d7c9c64aa1372ad8b20f5a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.7/wiremux-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1d50a88106e2e3593094c18437a4065732b420aa54edc014c0f7449218211104"
    end
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.7/wiremux-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5ebeecce5460f4c863858605b8efdf49686573b7b8f9f5cca5d8344ab17a07fd"
    end
  end

  def install
    bin.install "wiremux"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiremux --version")
  end
end
