require "language/haskell"

class Githud < Formula
  include Language::Haskell::Cabal

  version_number = "1.3.2"

  desc "Clean git HUD for your prompt"
  homepage "https://github.com/gbataille/gitHUD"
  url "https://hackage.haskell.org/package/gitHUD-#{version_number}/gitHUD-#{version_number}.tar.gz"
  sha256 "1ae533abaa42c6fdca5eef94cc0e94ae6712cf1fc1336486912dedb863c4fb06"

  bottle do
    root_url "https://raw.githubusercontent.com/gbataille/homebrew-gba/v#{version_number}/Bottles"
    sha256 "124e4b4fb121025edeccfcf8da8fc553b50a2bda433c5e6bcbf33e413cc7606c" => :el_capitan
  end

  depends_on "ghc" => :build
  depends_on "cabal-install" => :build

  def install
    install_cabal_package
  end

  def post_install
    opoo "A new configuration key was introduced (merge_branch_ignore_branches). Check out the Changelog on github"
  end

  test do
    system "#{bin}/gitHUD", "zsh"
  end
end
