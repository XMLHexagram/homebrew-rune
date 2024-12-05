cask "rune@beta" do
    arch arm: "aarch64", intel: "x64"
  
    version "v1.0.0-beta.2"
    sha256 "d770e81597566dd2d2363feb350f808c7a92e363df95c51e48140eb30e452cc9"
      
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
  
