cask "screentranslate" do
  version "1.5.2"
  sha256 "4075f5663a4d11ab7a738a8900e198b7620935684f69e8d882fdac08056ebdbb"

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
