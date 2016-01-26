require "language/haskell"

class Githud < Formula
  include Language::Haskell::Cabal

  version_number = "1.3.1"

  desc "Clean git HUD for your prompt"
  homepage "https://github.com/gbataille/gitHUD"
  url "https://hackage.haskell.org/package/gitHUD-#{version_number}/gitHUD-#{version_number}.tar.gz"
  sha256 "d770a57be1e746ed39e1c34ae6464ac4fd66599503a8b4e92f1b8a69cf986ccb"

  bottle do
    root_url "https://raw.githubusercontent.com/gbataille/homebrew-gba/v#{version_number}/Bottles"
    sha256 "68b53872acdec2ccfc3ca4a7c9f16aaa507757c07a04bfb46e58e6e2f8ef3158" => :el_capitan
  end

  depends_on "ghc" => :build
  depends_on "cabal-install" => :build

  def install
    install_cabal_package
  end

  def post_install
    opoo "Some proposed defaults in the configuration file have changed. If you have your own custom config, check out the changes in the new version"
  end

  test do
    system "#{bin}/gitHUD", "zsh"
  end
end
