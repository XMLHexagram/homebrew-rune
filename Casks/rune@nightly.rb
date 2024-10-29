cask "rune@nightly" do
    arch arm: "aarch64", intel: "x64"
  
    version :latest
    sha256 :no_check
      
    url "https://github.com/Losses/rune/releases/download/v0.0.0-dev.17/Rune-v0.0.0-dev.17-f30f4fa-macOS.dmg"
    name "Rune"
    desc "The nightly version of rune player."
    homepage "https://github.com/Losses/rune"
  
    app "Rune.app"
    binary "#{appdir}/Rune.app/Contents/MacOS/Rune"
  
    zap trash: [
        
    ]
  end
  