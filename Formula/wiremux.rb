class Wiremux < Formula
  desc "Maps Chat Completions, Messages, Responses, Gemini, and Converse through one IR"
  homepage "https://github.com/wiremuxhq/wiremux"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.1/wiremux-aarch64-apple-darwin.tar.gz"
      sha256 "84a190c4d3f01ffceb10453e0319eb05fcb9a486f83172fc4aef7dfc79be95fe"
    end
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.1/wiremux-x86_64-apple-darwin.tar.gz"
      sha256 "76ecb61eb53ae40fe13371bab363f13db346c167bf39120849b1a9ca22ba0d53"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.1/wiremux-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bbb200e63eb96760ef08ddb54eff63e7db6bc24cc14d21b05b4e6fb953c18d6b"
    end
    on_arm do
      url "https://github.com/wiremuxhq/wiremux/releases/download/v0.11.1/wiremux-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3ab994d88cc83b6edf076154b818e97292b656849b7c54217385144b68be7bf2"
    end
  end

  def install
    bin.install "wiremux"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiremux --version")
  end
end
