class Wiremux < Formula
  desc "Maps Chat Completions, Messages, Responses, Gemini, and Converse through one IR"
  homepage "https://github.com/wiremuxhq/wiremux"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.10.0/wiremux-aarch64-apple-darwin.tar.gz"
      sha256 "d90497bf3669425af31c2f609e3b2cce1aa9d66653b73da06ec8bd1301e03e5b"
    end
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.10.0/wiremux-x86_64-apple-darwin.tar.gz"
      sha256 "4e64516be1f9eeb8f7b7daff00fa82e0480bd8cc5f2cf94795bb51c448ddbd0e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.10.0/wiremux-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "82d3b267d4e7c28a10043e8bacdd5a77a9f08bbc98c135ea4c1dcaa5fcd17202"
    end
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.10.0/wiremux-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b55d6ddabf9da88d720fd5c48324eb6e2364e30e2d3492f4886ed003f90e7d16"
    end
  end

  def install
    bin.install "wiremux"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiremux --version")
  end
end
