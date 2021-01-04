class Githud < Formula
  version_number = "3.2.2"

  desc "Clean git HUD for your prompt"
  homepage "https://github.com/gbataille/gitHUD"
  url "https://hackage.haskell.org/package/githud-#{version_number}/githud-#{version_number}.tar.gz"
  sha256 "e32942ceae27108dbab283cd790d42575512ae0ad1b317d080cdba8e0d0fe2a7"

  bottle do
    root_url "https://github.com/gbataille/homebrew-gba/raw/master/Bottles"
    sha256 "26f4794d8a6bb79dc3dcd3057d03a4c85c594fceef498c063b52efa717e35f38" => :catalina
  end

  depends_on "ghc@8.8" => :build
  depends_on "cabal-install" => :build

  def install
    system "cabal", "v2-update"
    system "cabal", "v2-install", *std_cabal_v2_args
  end

  test do
    system "#{bin}/githud", "zsh"
  end
end
