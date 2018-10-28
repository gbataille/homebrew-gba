require "language/haskell"

class Envstatus < Formula
  include Language::Haskell::Cabal

  version_number = "1.0.1"

  desc "Display contextual information efficiently"
  homepage "https://github.com/gbataille/envstatus"
  url "https://hackage.haskell.org/package/envstatus-#{version_number}/envstatus-#{version_number}.tar.gz"
  sha256 "9c23b019a2537c57966bfed17457ad4fa89b544457d486a54617981395cf6812"

  # bottle do
  #   root_url "https://github.com/gbataille/homebrew-gba/raw/master/Bottles"
  #   sha256 "d805559b22cb87b338b937fd305b7ac855a83ea6721960a8317503cd04335e93" => :mojave
  # end


  depends_on "ghc" => :build
  depends_on "cabal-install" => :build

  def install
    install_cabal_package
  end

  test do
    system "#{bin}/envstatus"
  end
end
