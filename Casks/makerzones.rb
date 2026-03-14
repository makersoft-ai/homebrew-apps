# Homebrew Cask formula for MakerZones
# To submit: fork homebrew/homebrew-cask, add this file to Casks/m/makerzones.rb, submit PR
#
# Before submitting:
# 1. Build the .app bundle and create a .zip
# 2. Upload to GitHub Releases
# 3. Update the url and sha256 below
# 4. Test locally: brew install --cask ./makerzones.rb

cask "makerzones" do
  version "1.2.0"
  sha256 "4b41f1aecd5d3a3aec11d0f641645e4ff6a174d29454d2991391b7356f442791"

  url "https://github.com/makersoft-ai/homebrew-apps/releases/download/v#{version}/MakerZones-#{version}.zip"
  name "MakerZones"
  desc "FancyZones-style window tiling manager for macOS"
  homepage "https://makersoft.ai/makerzones-fancyzones-for-mac"

  depends_on macos: ">= :ventura"

  app "MakerZones.app"

  zap trash: [
    "~/Library/Logs/MakerZones",
    "~/.config/makerzones",
    "~/Library/Mobile Documents/com~apple~CloudDocs/MakerZones",
    "~/Library/Preferences/ai.makersoft.makerzones.plist",
  ]

  caveats <<~EOS
    MakerZones requires Accessibility permissions to manage windows.
    After installation, grant access in:
      System Settings > Privacy & Security > Accessibility

    Quick start:
      1. Hold Ctrl+Shift and drag any window to snap it to a zone
      2. Click the menu bar icon to open Settings

    Upgrade to Pro ($4.99 one-time) for unlimited zones, layouts,
    edge snapping, window memory, and more:
      https://makersoft.ai
  EOS
end
