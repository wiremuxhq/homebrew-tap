class Wiremux < Formula
  desc "Maps Chat Completions, Messages, Responses, Gemini, and Converse through one IR"
  homepage "https://github.com/wiremuxhq/wiremux"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.6/wiremux-aarch64-apple-darwin.tar.gz"
      sha256 "93645a046cb6ca51d46750a1215957cdf9225eeafc905a4de71ff4388f22abf4"
    end
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.6/wiremux-x86_64-apple-darwin.tar.gz"
      sha256 "bfc4d7a422802fb211610467fe014752f173c6a8e58d060ce94a7f8f9076b34e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.6/wiremux-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f676b19844ef5a665b5a892229f9496b444cfea52cf7f3bc149014fc22893671"
    end
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.6/wiremux-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9418c550ef84b937523d37f7f7a3740b84a0c1fe5ce8cb46ac242c719f406c71"
    end
  end

  def install
    bin.install "wiremux"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiremux --version")
  end
end
