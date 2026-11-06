class Wiremux < Formula
  desc "Maps Chat Completions, Messages, Responses, Gemini, and Converse through one IR"
  homepage "https://github.com/wiremuxhq/wiremux"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.10/wiremux-aarch64-apple-darwin.tar.gz"
      sha256 "10387d59110181db0df0a60d29f32ec581a52ff684686195f46b745df7fccffe"
    end
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.10/wiremux-x86_64-apple-darwin.tar.gz"
      sha256 "b0c4d1d2702fd31a0c53d214719fe75ee7efb2e02b43328273e2a62105e92bfd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.10/wiremux-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e7236c1353e92a0cd13d1bdec4dfb60921cd2013e7612c3bfdaadd495d265728"
    end
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.10/wiremux-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ad0c38d63ae0cb0467c2ec601c3d004edf1c1900c605e60b40798a564d57d20d"
    end
  end

  def install
    bin.install "wiremux"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiremux --version")
  end
end
