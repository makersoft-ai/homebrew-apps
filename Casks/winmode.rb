cask "winmode" do
  version "1.1.8"
  sha256 "0bb9a8c04dd76fb8883b1c3656e6341911679ad49199892148b8a4cc78508b6a"

  url "https://github.com/reidmaker/homebrew-apps/releases/download/v#{version}/WinMode-#{version}.zip"
  name "WinMode"
  desc "Windows-style window management, keyboard shortcuts, and Alt+Tab for macOS"
  homepage "https://makersoft.ai/winmode-make-your-mac-work-like-windows"

  depends_on macos: ">= :ventura"

  app "WinMode.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-d", "com.apple.quarantine", "#{appdir}/WinMode.app"], sudo: false
  end

  zap trash: [
    "~/Library/Preferences/ai.makersoft.winmode.plist",
    "~/Library/Logs/WinMode",
  ]

  caveats <<~EOS
    WinMode requires Accessibility permissions to remap keys and manage windows.
    After installation, grant access in:
      System Settings > Privacy & Security > Accessibility

    WinMode runs in the menu bar. Click the icon to open Settings.

    Upgrade to Pro for Alt+Tab switching, scroll reversal, per-app
    exclusions, and more: https://makersoft.ai
  EOS
end
