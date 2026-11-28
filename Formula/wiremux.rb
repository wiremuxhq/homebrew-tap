class Wiremux < Formula
  desc "Maps Chat Completions, Messages, Responses, Gemini, and Converse through one IR"
  homepage "https://github.com/wiremuxhq/wiremux"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.16/wiremux-aarch64-apple-darwin.tar.gz"
      sha256 "7753cc4637369c0d031e0a704eeda99fc7e48138dabc7cbd7fccd78b1cf625e4"
    end
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.16/wiremux-x86_64-apple-darwin.tar.gz"
      sha256 "fe4fe742094b089742d9c122654aa9a61a0eabe3f542040297f312b6074c827d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.16/wiremux-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a4f24ec86dd9d94a8a8eac696e1905731582b689e3de2105f6f3125a9307c625"
    end
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.16/wiremux-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9ecc16a22b24c7b9ac4e8942d31245d0fb60bf006c70901c95be05c3b55aecbb"
    end
  end

  def install
    bin.install "wiremux"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiremux --version")
  end
end
