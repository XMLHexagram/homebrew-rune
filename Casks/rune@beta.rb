cask "rune@beta" do
  version "1.0.0-beta.5"
  sha256 "4b06f26ea6bcaac3a7555f70e06b1dd0673e46f929536ab7315d7a2c92616506"

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
