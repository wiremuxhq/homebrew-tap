class Wiremux < Formula
  desc "Maps Chat Completions, Messages, Responses, Gemini, and Converse through one IR"
  homepage "https://github.com/wiremuxhq/wiremux"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.2/wiremux-aarch64-apple-darwin.tar.gz"
      sha256 "2c2514751b3d05af5c373f247e29f0e00b03ca7a217982f78576ee328a4bdf2d"
    end
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.2/wiremux-x86_64-apple-darwin.tar.gz"
      sha256 "ddacd63876a0cca05eb457c590f99508ec01cd1d6329521a4a8eaef9777e4f7f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.2/wiremux-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9a821ec3c00cba76180f9f3a0910ff867f8013db01362fb5dcadc843c8957011"
    end
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.2/wiremux-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "95c782c11268b1d1bacaf263f489bdd4704f77ddc135e251f2b873348c7119a5"
    end
  end

  def install
    bin.install "wiremux"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiremux --version")
  end
end
