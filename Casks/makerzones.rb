cask "makerzones" do
  version "1.3.3"
  sha256 "a37369ea56f7f19ee23b965185979cfaffa45d0e3fea36ea756d5133748973a6"

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
