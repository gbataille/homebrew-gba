require "language/haskell"

class Githud < Formula
  include Language::Haskell::Cabal

  version_number = "2.0.2"

  desc "Clean git HUD for your prompt"
  homepage "https://github.com/gbataille/gitHUD"
  url "https://hackage.haskell.org/package/githud-#{version_number}/githud-#{version_number}.tar.gz"
  sha256 "68e653a7159a27db3bd7d5278c28ac38ee0266460b3524b11af6f7c3c098115a"

  bottle do
    cellar :any_skip_relocation
    sha256 "b4c4be0b217415ab0021ece96729815ca062cc7573321466d2c468184f08c7c6" => :high_sierra
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
