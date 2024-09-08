class Fuzzybrew < Formula
  desc "Fuzzy search for Homebrew packages"
  homepage "https://github.com/gschurck/fuzzybrew"
  url "https://github.com/gschurck/fuzzybrew/archive/v0.2.1.tar.gz"
  sha256 "5fdc8207d5e3a353f8213e97a3ad7f534b287a238fdab16f8c93645813ac81f0"
  license "MIT"

  depends_on "fzf"

  def install
    bin.install "fuzzybrew.sh" => "fuzzybrew"
  end

  test do
    system "#{bin}/fuzzybrew", "--version"
  end
end