cask "screentranslate" do
  version "1.5.1"
  sha256 "757606e1d11a66bab2a6f5901af81d4f82683c19d95fd27c66aed1f1403739ab"

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
