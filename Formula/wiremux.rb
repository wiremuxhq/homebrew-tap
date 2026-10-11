class Wiremux < Formula
  desc "Maps Chat Completions, Messages, Responses, Gemini, and Converse through one IR"
  homepage "https://github.com/wiremuxhq/wiremux"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.0/wiremux-aarch64-apple-darwin.tar.gz"
      sha256 "63686d2b20c616488bedbf0f979c755ffe4ebb38f1bd6c9e855f1e787cfc2951"
    end
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.0/wiremux-x86_64-apple-darwin.tar.gz"
      sha256 "873c57b6355dc527c70d7b4f5da164a13c1399bd3590ebdea28b01bf00ded3bb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.0/wiremux-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6d3539d0c196c604eda151651ada0938d691c80737a64a87f984351a6fd62656"
    end
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.0/wiremux-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a7198eb1788b6c5dad5f014bda19c3fe88be93f90ccbec1e33236de05ae97ef3"
    end
  end

  def install
    bin.install "wiremux"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiremux --version")
  end
end
