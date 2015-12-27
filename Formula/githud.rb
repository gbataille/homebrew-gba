require "language/haskell"

class Githud < Formula
  include Language::Haskell::Cabal

  desc "A clean git HUD for your prompt"
  homepage "https://github.com/gbataille/gitHUD"
  url "https://hackage.haskell.org/package/gitHUD-1.0.0.0/gitHUD-1.0.0.0.tar.gz"
  version "1.0.0.0"
  sha256 "27f85577fa0826470927652a783ad8364c8cda2070a1905d3efecc5aa0e1941d"

  depends_on "ghc" => :build
  depends_on "cabal-install" => :build

  setup_ghc_compilers

  bottle do
    root_url "https://github.com/gbataille/homebrew-gba/raw/master/Bottles"
    sha256 "6a45e2d5beb78183555270b3ae4f639cb90b71c508426245e4a31b10db6300c3" => :el_capitan
  end

  def install
    cabal_sandbox do
      cabal_install "--only-dependencies"
      cabal_install "--prefix=#{prefix}"
    end
    cabal_clean_lib
  end

  test do
    system "#{bin}/gitHUD", "zsh"
  end
end
