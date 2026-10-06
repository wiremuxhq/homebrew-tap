class Wiremux < Formula
  desc "Maps Chat Completions, Messages, Responses, Gemini, and Converse through one IR"
  homepage "https://github.com/wiremuxhq/wiremux"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.10.3/wiremux-aarch64-apple-darwin.tar.gz"
      sha256 "5dec389314e8a29eaa9498cdd977ee7c577dfd8ef0826816ae3eb9f0570cf4b3"
    end
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.10.3/wiremux-x86_64-apple-darwin.tar.gz"
      sha256 "546c1c699ad4e79d81376cc893360dd20499b5891a1c578db0e896aa224612c9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.10.3/wiremux-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0bcc56692d46ddbe3b1ea8a9b192e354934e0b24d51690f4cef1e8ca550f32b7"
    end
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.10.3/wiremux-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1cc5d9c6c36415c2dbbe401ce846f33703465ee26eabc11675b1653c98972c8d"
    end
  end

  def install
    bin.install "wiremux"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiremux --version")
  end
end
