class Wiremux < Formula
  desc "Maps Chat Completions, Messages, Responses, Gemini, and Converse through one IR"
  homepage "https://github.com/wiremuxhq/wiremux"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.9/wiremux-aarch64-apple-darwin.tar.gz"
      sha256 "e16ebbdc974eb706bb2bb3fcd354be7ae50e65f8f36076517c4551c826d56dbf"
    end
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.9/wiremux-x86_64-apple-darwin.tar.gz"
      sha256 "ba05d23d66b1359f366cfafc9cb6c2ca7a9dc21901087e15e9b027398856ea19"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.9/wiremux-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "46cfab7437d5c4095455f77524270970ccbe00fc7ccde5b24221880c4f209342"
    end
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.9/wiremux-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "430ce7baf6156573866920c534d21f3fc9b71567b8df4a08c58545d4fe6f3efe"
    end
  end

  def install
    bin.install "wiremux"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiremux --version")
  end
end
