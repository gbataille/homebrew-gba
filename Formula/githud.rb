require "language/haskell"

class Githud < Formula
  include Language::Haskell::Cabal

  version_number = "1.3.7"

  desc "Clean git HUD for your prompt"
  homepage "https://github.com/gbataille/gitHUD"
  url "https://hackage.haskell.org/package/gitHUD-#{version_number}/gitHUD-#{version_number}.tar.gz"
  sha256 "dc38431b13d2dc4625987131c1389ed4ab67154990035c0c66f30d90d1a344af"

  bottle do
    root_url "https://github.com/gbataille/homebrew-gba/raw/master/Bottles"
    sha256 "5e4c97c4671c684dd8a9740f9b984bcc9ca9158a80d604e36ee60c68f30a2821" => :sierra
    sha256 "7488d011dcd0253123b5b8a161e013e00363ddc2c972b79756a08eb06e7d1b7f" => :high_sierra
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
