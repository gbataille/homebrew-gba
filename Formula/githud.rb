require "language/haskell"

class Githud < Formula
  include Language::Haskell::Cabal

  desc "A clean git HUD for your prompt"
  homepage "https://github.com/gbataille/gitHUD"
  url "https://hackage.haskell.org/package/gitHUD-1.1.0/gitHUD-1.1.0.tar.gz"
  version "1.1.0"
  sha256 "da4494d601fde664dd90d30ab5431e9648599f561a956d54408b3bacce6032e7"

  depends_on "ghc" => :build
  depends_on "cabal-install" => :build

  bottle do
    root_url "https://raw.githubusercontent.com/gbataille/homebrew-gba/v1.1.0/Bottles"
    sha256 "0c97928eb689ea9f8b072900d0a90a24caa88601e736ad226415087a17d2ae73" => :el_capitan
  end

  def install
    install_cabal_package
  end

  test do
    system "#{bin}/gitHUD", "zsh"
  end
end
