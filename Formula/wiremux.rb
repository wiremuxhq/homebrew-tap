class Wiremux < Formula
  desc "Maps Chat Completions, Messages, Responses, Gemini, and Converse through one IR"
  homepage "https://github.com/wiremuxhq/wiremux"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.10.4/wiremux-aarch64-apple-darwin.tar.gz"
      sha256 "f5fbb643d4dee0201d8aced6f560a87aa09e8dddd802d04d25874602aa34dc26"
    end
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.10.4/wiremux-x86_64-apple-darwin.tar.gz"
      sha256 "d777a81b0d9747cf034793b516cb87c12abf3cbfe156b03eac4d3abdc079f29d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.10.4/wiremux-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "16b9c14bd125d4a60c7dc94df6c38f57fc2b97898ac96fe1ef5f35ed46b4fda5"
    end
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.10.4/wiremux-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1edc7868269e06feae94cad14e93ea990a6afa1d05f2d72cf114e2d6530d7190"
    end
  end

  def install
    bin.install "wiremux"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiremux --version")
  end
end
