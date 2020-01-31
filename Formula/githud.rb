require "language/haskell"

class Githud < Formula
  include Language::Haskell::Cabal

  version_number = "3.2.0"

  desc "Clean git HUD for your prompt"
  homepage "https://github.com/gbataille/gitHUD"
  url "https://hackage.haskell.org/package/githud-#{version_number}/githud-#{version_number}.tar.gz"
  sha256 "0a354f9731392ef1867d8c7fb0b1ae2351004680a673e09ad1baa02d140c028b"

  bottle do
    root_url "https://github.com/gbataille/homebrew-gba/raw/master/Bottles"
    sha256 "0eed220cff58c66b18a92396ad398646473670499baacbeb19687b88bfabf6da" => :catalina
  end

  depends_on "ghc" => :build
  depends_on "cabal-install" => :build

  def install
    install_cabal_package
  end

  test do
    system "#{bin}/githud", "zsh"
  end
end
