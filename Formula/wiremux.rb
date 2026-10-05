class Wiremux < Formula
  desc "Maps Chat Completions, Messages, Responses, Gemini, and Converse through one IR"
  homepage "https://github.com/wiremuxhq/wiremux"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.10.2/wiremux-aarch64-apple-darwin.tar.gz"
      sha256 "a5b23b15f58f619a3ee274c1cdcf786622328e9009fbb85d510e6792567fde52"
    end
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.10.2/wiremux-x86_64-apple-darwin.tar.gz"
      sha256 "b401be220374c6f4c536da6b4748518d03e6be867d6bca9566c8c9eac717242d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.10.2/wiremux-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fa3a26c77746451db8b935b4947cd651264b480b46c75614305d97210a195678"
    end
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.10.2/wiremux-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2d334cf17ee41a935d37292187b89642d5fd5a5a9df5b113b68b31c748e0168b"
    end
  end

  def install
    bin.install "wiremux"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiremux --version")
  end
end
