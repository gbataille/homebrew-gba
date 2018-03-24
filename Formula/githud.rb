require "language/haskell"

class Githud < Formula
  include Language::Haskell::Cabal

  version_number = "2.0.0"

  desc "Clean git HUD for your prompt"
  homepage "https://github.com/gbataille/gitHUD"
  url "https://hackage.haskell.org/package/githud-#{version_number}/githud-#{version_number}.tar.gz"
  sha256 "d1e7dee4dfe1798b8d9192fb504916283bb543faa68cbd42bdadedcd1113becd"

  bottle do
    root_url "https://github.com/gbataille/homebrew-gba/raw/master/Bottles"
    sha256 "5102e212e878c49d14ac61b2da43847a419f8a6d50fde42d271b278bc6eee76b" => :high_sierra
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
