require "language/haskell"

class Githud < Formula
  include Language::Haskell::Cabal

  version_number = "1.3.6"

  desc "Clean git HUD for your prompt"
  homepage "https://github.com/gbataille/gitHUD"
  url "https://hackage.haskell.org/package/gitHUD-#{version_number}/gitHUD-#{version_number}.tar.gz"
  sha256 "a522924926b65d19601726fb5fde020c0523f0b30c95d6bb1e0ba0d751da8a49"

  bottle do
    root_url "https://github.com/gbataille/homebrew-gba/raw/master/Bottles/"
      sha256 "db2a0c664b12eef59bcfdb6aa0007e6cb16fe4b072425d0a857682f32c8e7122" => :sierra
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
