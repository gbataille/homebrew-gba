require "language/haskell"

class Envstatus < Formula
  include Language::Haskell::Cabal

  version_number = "1.0.2"

  desc "Display contextual information efficiently"
  homepage "https://github.com/gbataille/envstatus"
  url "https://hackage.haskell.org/package/envstatus-#{version_number}/envstatus-#{version_number}.tar.gz"
  sha256 "e56e19aed01c3e09bfb8a0f9f8fa61a8042f7de1b0233b3cd89d7f8e2b85bbf1"

  bottle do
    root_url "https://github.com/gbataille/homebrew-gba/raw/master/Bottles"
    sha256 "2650cee642de7fbc2038da024fd2c3705be1e8e9153955130928649208d90f75" => :mojave
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
