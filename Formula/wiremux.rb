class Wiremux < Formula
  desc "Maps Chat Completions, Messages, Responses, Gemini, and Converse through one IR"
  homepage "https://github.com/wiremuxhq/wiremux"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.15/wiremux-aarch64-apple-darwin.tar.gz"
      sha256 "8d32283e119bd2be527fbc32ed548bacbaeed2e8030ea569b5ecfc78a0d2c9a7"
    end
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.15/wiremux-x86_64-apple-darwin.tar.gz"
      sha256 "4fed0be63a221304bcee805e5f85dd8281bf4c41d9824b72db848f1c67847bb5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.15/wiremux-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1ae97968b8d83bf587fde6dfd0a9f81a6a1b17115ecf81dd9c74d369b64377a7"
    end
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.15/wiremux-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b6bbeadd7e5a6abdf42d90e22e3580eb9e20a0a470d366c020418c0a8d39657a"
    end
  end

  def install
    bin.install "wiremux"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiremux --version")
  end
end
