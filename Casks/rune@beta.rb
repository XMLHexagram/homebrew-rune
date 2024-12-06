cask "rune@beta" do
  version "1.0.0-beta.4"
  sha256 "a69ced3ce781c8bc6d0752264608271c368ba5fb6850379e8ed3394da2f2a6be"

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
