cask "winmode" do
  version "1.3.3"
  sha256 "24566c17a82a4304bfebba8731ef82fc82a0a55616117c6e5b2fffdb22332c17"

  url "https://github.com/makersoft-ai/homebrew-apps/releases/download/v#{version}/WinMode-#{version}.zip"
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
  EOS
end
