cask "styx" do
  version "0.4.17"
  sha256 "8668bb4f32f668df5a399d68a8a7e5fd59cfdf82c9f411a40f91003bad00314c"

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
