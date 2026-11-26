class Wiremux < Formula
  desc "Maps Chat Completions, Messages, Responses, Gemini, and Converse through one IR"
  homepage "https://github.com/wiremuxhq/wiremux"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.14/wiremux-aarch64-apple-darwin.tar.gz"
      sha256 "b0a0efe751744292c9757526d51820c08d9d01d9f515cf95492c0e53b467db8b"
    end
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.14/wiremux-x86_64-apple-darwin.tar.gz"
      sha256 "eab82056062994ad0b306aa28ae6ca3f19190330b890bd461acf3fc08259bc6b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.14/wiremux-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a5929039f94b140025d68d62da271e7aa498b8b15facbb00ce5daa68b4e9efa6"
    end
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.14/wiremux-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ab89612aa7cbfb2521ad7f89e41e89fdb1f0f3fdecc7fc2d09bf952017cc8a61"
    end
  end

  def install
    bin.install "wiremux"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiremux --version")
  end
end
