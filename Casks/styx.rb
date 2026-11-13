cask "styx" do
  version "0.5.1"
  sha256 "3c624bc34c44a6c844fa2e3e163466eaa0e481488a92b255070c4e2f426744e8"

  url "https://storage.googleapis.com/styx-desktop-releases/mac/Styx-#{version}-arm64.dmg"
  name "Styx"
  desc "Run coding agents across all your projects, gated from production"
  homepage "https://heystyx.com/"

  livecheck do
    url "https://storage.googleapis.com/styx-desktop-releases/mac/latest-mac.yml"
    regex(/^version:\s*(\S+)$/i)
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Styx.app"

  zap trash: [
    "~/Library/Application Support/Styx",
    "~/Library/Logs/Styx",
    "~/Library/Preferences/dev.styx.app.plist",
    "~/Library/Saved Application State/dev.styx.app.savedState",
  ]
end
