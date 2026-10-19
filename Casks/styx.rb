cask "styx" do
  version "0.4.15"
  sha256 "594a3ee8df7ad2ca4cd33df56b0e4bc555148cd8bcdd86da0ab2c0a8fdb70108"

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
