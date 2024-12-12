cask "rune@beta" do
  version "1.0.0-rc.2"
  sha256 "40d915e5c0f422c333b1e041f7cfe35da4cd56b90bf94b036380bc6133f58a0e"

  url "https://github.com/Losses/rune/releases/download/v#{version}/Rune-v#{version}-macOS.zip"
  name "Rune"
  desc "Experience timeless melodies with a music player"
  homepage "https://github.com/Losses/rune"

  livecheck do
    url :url
    strategy :github_latest
    regex(/^v?(\d+(?:\.\d+)+(?:-(?:beta|rc)\.\d+)?)$/)
  end

  auto_updates true

  app "Rune.app", target: "Rune@beta.app"

  zap trash: [
    "/Users/hexagram/Library/Application Scripts/ci.not.rune",
    "/Users/hexagram/Library/Containers/ci.not.rune",
  ]
end
