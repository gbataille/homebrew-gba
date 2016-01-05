require "language/haskell"

class Githud < Formula
  include Language::Haskell::Cabal

  versionNumber = "1.2.0"

  desc "A clean git HUD for your prompt"
  homepage "https://github.com/gbataille/gitHUD"
  url "https://hackage.haskell.org/package/gitHUD-#{versionNumber}/gitHUD-#{versionNumber}.tar.gz"
  version versionNumber
  sha256 "2af07420d64dad10cf3d0ab6198beed675006445d4c414078a63f2b553400791"

  depends_on "ghc" => :build
  depends_on "cabal-install" => :build

  bottle do
    root_url "https://raw.githubusercontent.com/gbataille/homebrew-gba/v#{versionNumber}/Bottles"
    sha256 "7597d0c4ba7a2600b5f36d398a14e478a90b2351e379a53cc1d4750e334c2edc" => :el_capitan
  end

  def install
    install_cabal_package
  end

  test do
    system "#{bin}/gitHUD", "zsh"
  end
end
