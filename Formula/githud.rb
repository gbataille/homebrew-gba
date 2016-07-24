require "language/haskell"

class Githud < Formula
  include Language::Haskell::Cabal

  version_number = "1.3.3"

  desc "Clean git HUD for your prompt"
  homepage "https://github.com/gbataille/gitHUD"
  url "https://hackage.haskell.org/package/gitHUD-#{version_number}/gitHUD-#{version_number}.tar.gz"
  sha256 "c9868144e8fd72604a79cb6543d1099b931cdd8ce527319dd1f9294850d4b2d3"

  bottle do
    root_url "https://github.com/gbataille/homebrew-gba/blob/master/Bottles/githud-#{version_number}.el_capitan.bottle.tar.gz?raw=true"
    sha256 "8d54c8d761e9f0d0d158f127f1afd7e52942f5059de9342e54715251dec1f03d" => :el_capitan
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
