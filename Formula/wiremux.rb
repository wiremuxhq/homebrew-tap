class Wiremux < Formula
  desc "Maps Chat Completions, Messages, Responses, Gemini, and Converse through one IR"
  homepage "https://github.com/wiremuxhq/wiremux"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.10.5/wiremux-aarch64-apple-darwin.tar.gz"
      sha256 "9c70436c337c679d7064b83d980c27fa39701feef1583225bb95d3fed6a12f06"
    end
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.10.5/wiremux-x86_64-apple-darwin.tar.gz"
      sha256 "cd3cc24a574eb9e5f634dac051adabd897f7fb834b2f275c5a934f357e2098eb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.10.5/wiremux-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3ed8e53e6b1b438e04d737480097b398772d0b4e2b074e5215207ebfe29c7418"
    end
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.10.5/wiremux-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2d109a10c15964bd75d9aa232bf4dba76beec4c836788e7ee54f62f688a2d610"
    end
  end

  def install
    bin.install "wiremux"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiremux --version")
  end
end
