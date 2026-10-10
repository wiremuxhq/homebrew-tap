class Wiremux < Formula
  desc "Maps Chat Completions, Messages, Responses, Gemini, and Converse through one IR"
  homepage "https://github.com/wiremuxhq/wiremux"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.10.6/wiremux-aarch64-apple-darwin.tar.gz"
      sha256 "17117c9bc703dd79fb2568628a6f85d7aa63d86fdb12a833feec903a7f8bd570"
    end
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.10.6/wiremux-x86_64-apple-darwin.tar.gz"
      sha256 "8699af06b88ff68426cab20e52d777bee44557bc73a26855987d56c98b169532"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.10.6/wiremux-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a18c094cfbc51d01d918226102bad39bf5b1fd8c209a9c8e3f9c635a63c4187e"
    end
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.10.6/wiremux-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dfa101137d2b4613095eae56b37d61ad387fbae9a8695be40f4bf84f460eb3c7"
    end
  end

  def install
    bin.install "wiremux"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiremux --version")
  end
end
