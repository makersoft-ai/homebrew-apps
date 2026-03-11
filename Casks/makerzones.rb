cask "makerzones" do
  version "1.0.0"
  sha256 "2d6b8207e35ced709ecb1cb94016b4cbbe47b5e336fd72e27137823927887c87"

  url "https://github.com/reidmaker/MakerZones/releases/download/v#{version}/MakerZones-#{version}.zip"
  name "MakerZones"
  desc "FancyZones-style window tiling manager for macOS"
  homepage "https://makersoft.ai/makerzones-fancyzones-for-mac"

  depends_on macos: ">= :ventura"

  app "MakerZones.app"

  zap trash: [
    "~/Library/Preferences/com.makerzones.plist",
    "~/Library/Logs/MakerZones",
  ]
end
