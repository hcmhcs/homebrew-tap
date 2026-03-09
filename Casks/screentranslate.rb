cask "screentranslate" do
  version "1.4.2"
  sha256 "75118d8985962301668782901cb2ee7ef90e46df77abffe64db2fe9b2ce3dce1"

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
