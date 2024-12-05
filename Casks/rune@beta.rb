cask "rune@beta" do
    arch arm: "aarch64", intel: "x64"
  
    version "v1.0.0-beta.3"
    sha256 :no_check
      
    url "https://github.com/Losses/rune/releases/download/#{version}/Rune-#{version}-macOS.zip"
    name "Rune"
    desc "Experience timeless melodies with a music player that blends classic design with modern technology."
    homepage "https://github.com/Losses/rune"

    auto_updates true
    
    app "Rune.app"
    binary "#{appdir}/Rune.app/Contents/MacOS/Rune"
  
    zap trash: [
        "/Users/hexagram/Library/Application Scripts/ci.not.rune",
        "/Users/hexagram/Library/Containers/ci.not.rune"
    ]
  end
  
