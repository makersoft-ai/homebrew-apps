cask "makerzones" do
  version "1.3.2"
  sha256 "808d1928c560030f6cbf2d622eae0925c9f5ff5a52ef0b3095007af532ba177e"

  url "https://github.com/makersoft-ai/homebrew-apps/releases/download/v#{version}/MakerZones-#{version}.zip"
  name "MakerZones"
  desc "FancyZones-style window tiling manager for macOS"
  homepage "https://makersoft.ai/makerzones-fancyzones-for-mac"

  depends_on macos: ">= :ventura"

  app "MakerZones.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-d", "com.apple.quarantine", "#{appdir}/MakerZones.app"], sudo: false
  end

  zap trash: [
    "~/Library/Preferences/ai.makersoft.makerzones.plist",
    "~/Library/Logs/MakerZones",
  ]
end
