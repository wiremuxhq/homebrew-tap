class Wiremux < Formula
  desc "Maps Chat Completions, Messages, Responses, Gemini, and Converse through one IR"
  homepage "https://github.com/wiremuxhq/wiremux"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.4/wiremux-aarch64-apple-darwin.tar.gz"
      sha256 "a31c92e7b219a2b6f06d8a0686d745c9e9e16bc275cd8b46354e49c029c8b1fb"
    end
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.4/wiremux-x86_64-apple-darwin.tar.gz"
      sha256 "f105327f8fe9251b71771c8b9d1d856ff2ba5f8ba35ed367aeaf03b2fa123430"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.4/wiremux-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7080da13ae32da06a53a2f0d31fd72d1d41cd383adc84854e21137710731dfed"
    end
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.4/wiremux-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a8acd8eaf309350fa98a2bc77661ade6756236d414245a199f41f0432edea6a8"
    end
  end

  def install
    bin.install "wiremux"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiremux --version")
  end
end
