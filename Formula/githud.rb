require "language/haskell"

class Githud < Formula
  include Language::Haskell::Cabal

  version_number = "2.1.0"

  desc "Clean git HUD for your prompt"
  homepage "https://github.com/gbataille/gitHUD"
  url "https://hackage.haskell.org/package/githud-#{version_number}/githud-#{version_number}.tar.gz"
  sha256 "9ebacc39f13a69ebe12949e795fb88324889ac9c07566743fc79d82388df40a6"

  bottle do
    root_url "https://github.com/gbataille/homebrew-gba/raw/master/Bottles"
    sha256 "5b235e36c1a1cbf26bb131aa3f1dace2943e335e7bb6af9529ee30b4b8f788a9" => :high_sierra
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
