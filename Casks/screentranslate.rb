cask "screentranslate" do
  version "1.4.3"
  sha256 "5b4f8fd4783437f6f6e1208eb7fe2ec3c51652a9de06be27f9b2f000e5093ec2"

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
