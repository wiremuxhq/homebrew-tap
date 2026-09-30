class Wiremux < Formula
  desc "Maps Chat Completions, Messages, Responses, Gemini, and Converse through one IR"
  homepage "https://github.com/wiremuxhq/wiremux"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.9.3/wiremux-aarch64-apple-darwin.tar.gz"
      sha256 "26fe82b534b9440100e9328757b9219100134be4df19fa928286c08d34feead7"
    end
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.9.3/wiremux-x86_64-apple-darwin.tar.gz"
      sha256 "603cb818c5645ff429f1b316e36c8d428ed86c2df140aa78b93781c48c68f46a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.9.3/wiremux-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "de54a70bcffc8d1c63309d0fd5f33dea36a0561b57b84ec1fcd836af1a792417"
    end
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.9.3/wiremux-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b0273fa1e39203c086bd61b836eb64f8a5f629548ed3db3c9b3f6d40a6557544"
    end
  end

  def install
    bin.install "wiremux"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiremux --version")
  end
end
