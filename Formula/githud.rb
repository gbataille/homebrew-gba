require "language/haskell"

class Githud < Formula
  include Language::Haskell::Cabal

  version_number = "1.3.5"

  desc "Clean git HUD for your prompt"
  homepage "https://github.com/gbataille/gitHUD"
  url "https://hackage.haskell.org/package/gitHUD-#{version_number}/gitHUD-#{version_number}.tar.gz"
  sha256 "7956019a42632f8658ba9a6508943fd212e9796657252eedec53f48850a07009"

  bottle do
    root_url "https://github.com/gbataille/homebrew-gba/raw/master/Bottles/"
    sha256 "1f9f0d1cae6a40ddb1c1eb20a6c1c65cd362340477950b11ed182cd6d6bebee8" => :el_capitan
    sha256 "0564bbf7e12c723bfeacafe5e34831f42fa31744ef7631b40f55fd23d428a17d" => :sierra
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
