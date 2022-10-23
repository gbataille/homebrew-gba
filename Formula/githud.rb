class Githud < Formula
  version_number = "3.3.0"

  desc "Clean git HUD for your prompt"
  homepage "https://github.com/gbataille/gitHUD"
  url "https://hackage.haskell.org/package/githud-#{version_number}/githud-#{version_number}.tar.gz"
  sha256 "5fe9c8196bbf230f7e28cb3692c7f2b1fc7d499c605613aca27b8e390f82925f"

  # bottle do
  #   root_url "https://github.com/gbataille/homebrew-gba/raw/master/Bottles"
  #   sha256 catalina: "26f4794d8a6bb79dc3dcd3057d03a4c85c594fceef498c063b52efa717e35f38"
  # end

  depends_on "cabal-install" => :build
  depends_on "ghc@8.10" => :build

  def install
    system "cabal", "v2-update"
    system "cabal", "v2-install", *std_cabal_v2_args
  end

  test do
    system "#{bin}/githud", "zsh"
  end
end
