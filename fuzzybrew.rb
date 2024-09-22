class Fuzzybrew < Formula
  desc "Fuzzy search for Homebrew packages"
  homepage "https://github.com/gschurck/fuzzybrew"
  url "https://github.com/gschurck/fuzzybrew/archive/v1.1.0.tar.gz"
  sha256 "a3a5a112051075d4f60e7a4eda4e71d5ba8fd3fe969ff7976c30f639fc3a2ac0"
  license "MIT"

  depends_on "fzf"

  def install
    bin.install "fuzzybrew.sh" => "fuzzybrew"
  end

  test do
    system "#{bin}/fuzzybrew", "--version"
  end
end
