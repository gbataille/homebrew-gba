require "language/haskell"

class Envstatus < Formula
  include Language::Haskell::Cabal

  version_number = "1.0.0"

  desc "Display contextual information efficiently"
  homepage "https://github.com/gbataille/envstatus"
  url "https://hackage.haskell.org/package/envstatus-#{version_number}/envstatus-#{version_number}.tar.gz"
  sha256 "d288674798ae058563e5c6b628138035f0b81297f826ac15b952e8058bea9f1c"

  bottle do
    root_url "https://github.com/gbataille/homebrew-gba/raw/master/Bottles"
    sha256 "d805559b22cb87b338b937fd305b7ac855a83ea6721960a8317503cd04335e93" => :mojave
  end


  depends_on "ghc" => :build
  depends_on "cabal-install" => :build

  def install
    install_cabal_package
  end

  test do
    system "#{bin}/envstatus"
  end
end
