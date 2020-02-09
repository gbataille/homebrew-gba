require "language/haskell"

class Githud < Formula
  include Language::Haskell::Cabal

  version_number = "3.2.1"

  desc "Clean git HUD for your prompt"
  homepage "https://github.com/gbataille/gitHUD"
  url "https://hackage.haskell.org/package/githud-#{version_number}/githud-#{version_number}.tar.gz"
  sha256 "0b571b1f065d68aaeb92a4cc5d352bf56bb22f21bfcfb26bb4dc53b5f9b178ef"

  bottle do
    root_url "https://github.com/gbataille/homebrew-gba/raw/master/Bottles"
    sha256 "94352ec6eb8bef42717fca95ef6b450435b63af86e08e456551bd846fdf52fcc" => :catalina
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
