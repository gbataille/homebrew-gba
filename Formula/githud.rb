require "language/haskell"

class Githud < Formula
  include Language::Haskell::Cabal

  version_number = "1.3.0"

  desc "Clean git HUD for your prompt"
  homepage "https://github.com/gbataille/gitHUD"
  url "https://hackage.haskell.org/package/gitHUD-#{version_number}/gitHUD-#{version_number}.tar.gz"
  sha256 "b186502251e38f439a907eb54284ebb453b63003d91ec83c0c3b455f0da48568"

  bottle do
    root_url "https://raw.githubusercontent.com/gbataille/homebrew-gba/v#{version_number}/Bottles"
    sha256 "7426ee57d2e72879a22f34fd6e1bf752d2b0255697cdd8f9448fd3ecbe2e669e" => :el_capitan
  end

  depends_on "ghc" => :build
  depends_on "cabal-install" => :build

  def install
    install_cabal_package
  end

  def post_install
    opoo "Some keys in the configuration file have changed. If you use the configuration file, please check it out"
  end

  test do
    system "#{bin}/gitHUD", "zsh"
  end
end
