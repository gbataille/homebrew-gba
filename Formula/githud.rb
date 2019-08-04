require "language/haskell"

class Githud < Formula
  include Language::Haskell::Cabal

  version_number = "3.0.0"

  desc "Clean git HUD for your prompt"
  homepage "https://github.com/gbataille/gitHUD"
  url "https://hackage.haskell.org/package/githud-#{version_number}/githud-#{version_number}.tar.gz"
  sha256 "b98b2ea9f85f4d16b70290da1d2021a1821cc9b03bbd2b16b7da850e606927ff"

  bottle do
    root_url "https://github.com/gbataille/homebrew-gba/raw/master/Bottles"
    sha256 "4a4a42ec207cd97c452d50d35c51b242713f55904473247b35242dba6e0a8eb7" => :mojave
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
