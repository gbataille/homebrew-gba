require "language/haskell"

class Githud < Formula
  include Language::Haskell::Cabal

  version_number = "1.3.4"

  desc "Clean git HUD for your prompt"
  homepage "https://github.com/gbataille/gitHUD"
  url "https://hackage.haskell.org/package/gitHUD-#{version_number}/gitHUD-#{version_number}.tar.gz"
  sha256 "8c2273f0d2af162915291e3180f1910dfa76813be9cb7676c53fde112e8ad355"

  bottle do
    root_url "https://github.com/gbataille/homebrew-gba/blob/master/Bottles/githud-#{version_number}.el_capitan.bottle.tar.gz?raw=true"
    sha256 "b6d15734fafa52bfb6ea5db27b2412619fa723082036e523478bc0872d1aac6d" => :el_capitan
  end

  depends_on "ghc" => :build
  depends_on "cabal-install" => :build

  def install
    install_cabal_package
  end

  test do
    system "#{bin}/gitHUD", "zsh"
  end
end
