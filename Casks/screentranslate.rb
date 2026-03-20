cask "screentranslate" do
  version "1.5.0"
  sha256 "f3a76773a0a05d8a3d04df35668819ef48b783f156587434b9fba7dcd34cd294"

  url "https://github.com/hcmhcs/screenTranslate/releases/download/v#{version}/ScreenTranslate-#{version}.dmg"
  name "ScreenTranslate"
  desc "Instant screen translation for macOS - capture or select text to translate"
  homepage "https://screentranslate.filient.ai"

  depends_on macos: ">= :sequoia"

  app "ScreenTranslate.app"

  zap trash: [
    "~/Library/Preferences/com.filient.ScreenTranslate.plist",
    "~/Library/Application Support/com.filient.ScreenTranslate",
  ]
end
