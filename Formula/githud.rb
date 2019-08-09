require "language/haskell"

class Githud < Formula
  include Language::Haskell::Cabal

  version_number = "3.0.1"

  desc "Clean git HUD for your prompt"
  homepage "https://github.com/gbataille/gitHUD"
  url "https://hackage.haskell.org/package/githud-#{version_number}/githud-#{version_number}.tar.gz"
  sha256 "e8122c0df1ecf2c69ebff5da71a8585fff9b8a97ede40ad06463452f8aea348a"

  bottle do
    root_url "https://github.com/gbataille/homebrew-gba/raw/master/Bottles"
    sha256 "4375cb53b38cb95af69ae18366611aa48805c9a9edcfd7f570774b68ef2667bf" => :mojave
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
