class Wiremux < Formula
  desc "Maps Chat Completions, Messages, Responses, Gemini, and Converse through one IR"
  homepage "https://github.com/wiremuxhq/wiremux"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.11/wiremux-aarch64-apple-darwin.tar.gz"
      sha256 "ecaf445dde2f0c2af9e15b52853f43b8397fc6ceb4eb6ebd74c149dbb67ee94f"
    end
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.11/wiremux-x86_64-apple-darwin.tar.gz"
      sha256 "e8c2ded255a386198dfe5c48ff57fa3d5e5055c76f428d41814e5598902807e7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.11/wiremux-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5970e956057888e301ce47cbeaccf9c443d613203c7025ca9fe1ede37d802d4e"
    end
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.11/wiremux-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "36ccc4484f6a03c84b059c35469b698cabe09f060e2f2382239aa3252d48c56c"
    end
  end

  def install
    bin.install "wiremux"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiremux --version")
  end
end
