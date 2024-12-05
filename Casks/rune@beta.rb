cask "rune@beta" do
  version "1.0.0-beta.3"
  sha256 "85fdcac3c0c63cc0de74ea542e2e98b2129c4576abe949eb7f61511465ad8145"

  url "https://github.com/Losses/rune/releases/download/v#{version}/Rune-v#{version}-macOS.zip"
  name "Rune"
  desc "Experience timeless melodies with a music player"
  homepage "https://github.com/Losses/rune"

  livecheck do
    url :url
    strategy :github_latest
    regex(/^v?(\d+(?:\.\d+)+(?:-beta\.\d+)?)$/)
  end

  auto_updates true

  app "Rune.app", target: "Rune@beta.app"

  zap trash: [
    "/Users/hexagram/Library/Application Scripts/ci.not.rune",
    "/Users/hexagram/Library/Containers/ci.not.rune",
  ]
end
