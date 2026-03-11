cask "winmode" do
  version "1.0.0"
  sha256 "5395bc29f10815e2afac239f40bf3c03cf9a5c09cafff46c674556bfd27112fe"

  url "https://github.com/reidmaker/MakerZones/releases/download/v#{version}/WinMode-#{version}.zip"
  name "WinMode"
  desc "Windows-style window management, keyboard shortcuts, and Alt+Tab for macOS"
  homepage "https://makersoft.ai/winmode-make-your-mac-work-like-windows"

  depends_on macos: ">= :ventura"

  app "WinMode.app"

  zap trash: [
    "~/Library/Preferences/ai.makersoft.winmode.plist",
    "~/Library/Logs/WinMode",
  ]
end
