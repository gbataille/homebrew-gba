require "language/haskell"

class Githud < Formula
  include Language::Haskell::Cabal

  version_number = "3.1.0"

  desc "Clean git HUD for your prompt"
  homepage "https://github.com/gbataille/gitHUD"
  url "https://hackage.haskell.org/package/githud-#{version_number}/githud-#{version_number}.tar.gz"
  sha256 "19453a4665e1ea23ec63a1083aa08a767389757d47027ad30516f071d4580d6at"

  bottle do
    root_url "https://github.com/gbataille/homebrew-gba/raw/master/Bottles"
    sha256 "f748bec8477701ee58cdd1146a52a41d12369f58f682a4c0bccba30e61ae27a5" => :mojave
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
