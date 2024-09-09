class Fuzzybrew < Formula
  desc "Fuzzy search for Homebrew packages"
  homepage "https://github.com/gschurck/fuzzybrew"
  url "https://github.com/gschurck/fuzzybrew/archive/v1.0.0.tar.gz"
  sha256 "02c2c89c9200952fca7bf3e795a0b6b65d9c216478d7f4a29b4daeaa518bf2f2"
  license "MIT"

  depends_on "fzf"

  def install
    bin.install "fuzzybrew.sh" => "fuzzybrew"
  end

  test do
    system "#{bin}/fuzzybrew", "--version"
  end
end
