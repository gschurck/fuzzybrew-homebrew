class Fuzzybrew < Formula
  desc "Fuzzy search for Homebrew packages"
  homepage "https://github.com/gschurck/fuzzybrew"
  url "https://github.com/gschurck/fuzzybrew/archive/v1.1.1.tar.gz"
  sha256 "f98b6290eaa1790b17024a9486b51d6076cbe9b4161bf3d5215dfa84b4a2e22e"
  license "MIT"

  depends_on "fzf"

  def install
    bin.install "fuzzybrew.sh" => "fuzzybrew"
  end

  test do
    system "#{bin}/fuzzybrew", "--version"
  end
end
