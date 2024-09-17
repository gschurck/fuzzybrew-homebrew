class Fuzzybrew < Formula
  desc "Fuzzy search for Homebrew packages"
  homepage "https://github.com/gschurck/fuzzybrew"
  url "https://github.com/gschurck/fuzzybrew/archive/v1.0.1.tar.gz"
  sha256 "d13716c922cf46f9f1df23348ecc4b2c2cd9527ea8b0c45ee4c003e3cdb9b69a"
  license "MIT"

  depends_on "fzf"

  def install
    bin.install "fuzzybrew.sh" => "fuzzybrew"
  end

  test do
    system "#{bin}/fuzzybrew", "--version"
  end
end
