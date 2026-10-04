class Wiremux < Formula
  desc "Maps Chat Completions, Messages, Responses, Gemini, and Converse through one IR"
  homepage "https://github.com/wiremuxhq/wiremux"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.10.1/wiremux-aarch64-apple-darwin.tar.gz"
      sha256 "fba1579afe9fe4719a2ea675dd9ec5967fdaaa6b09638ec03f691e188abe6337"
    end
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.10.1/wiremux-x86_64-apple-darwin.tar.gz"
      sha256 "4110d075e93ed710c30928b081b1c932cb4a5f09069a78fa8cf6967c903584f4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.10.1/wiremux-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "571e60f4ec6c44eea3cd89c737b79931e4826a337dada0bc73b5c8f8334bf233"
    end
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.10.1/wiremux-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "096fc8be4c706b55cb36e81e3a28677504e36b1e06ae3a55d8f9f8dde3e4736b"
    end
  end

  def install
    bin.install "wiremux"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiremux --version")
  end
end
