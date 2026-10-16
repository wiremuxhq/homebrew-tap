class Wiremux < Formula
  desc "Maps Chat Completions, Messages, Responses, Gemini, and Converse through one IR"
  homepage "https://github.com/wiremuxhq/wiremux"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.3/wiremux-aarch64-apple-darwin.tar.gz"
      sha256 "0ac93648138b775c55b8148a469fec7bfefc8ff9c05a2ef708a922aacacf7f0d"
    end
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.3/wiremux-x86_64-apple-darwin.tar.gz"
      sha256 "915dbaee28912256eb977eb378d2e2415c981df22bc5ccd7d76bc94c43205440"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.3/wiremux-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f21dde13d0d7e98e8c60d1769c30816074bbbf0495d94f526af7817f668d9f76"
    end
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.3/wiremux-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d941a10a5fe09e6f0ac1de7daca333041d83adbb82e2c265b21c68ae0365140a"
    end
  end

  def install
    bin.install "wiremux"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiremux --version")
  end
end
