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
