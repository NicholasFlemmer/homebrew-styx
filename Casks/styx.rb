cask "styx" do
  version "0.4.11"
  sha256 "d794c1206e26f2a041ac3f47f75791c095fa4d5cdc488ad14f4695c6b8f4653d"

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
