cask "betterstage" do
  version "1.3.3"
  sha256 "9e211db0d9a428afc358c72048da95e62b4f92dc56bd7770a50380d451bf9760"

  url "https://update.betterstage.app/BetterStage-#{version}.dmg"
  name "BetterStage"
  desc "Workspace manager with stages, tiling, tabs, and window snapping"
  homepage "https://betterstage.app/"

  livecheck do
    url "https://update.betterstage.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  # Keep the comparison form for older Homebrew clients running newer macOS releases.
  depends_on macos: ">= :sonoma"

  app "BetterStage.app"

  zap trash: [
    "~/Library/Application Support/app.betterstage.macos",
    "~/Library/Application Support/BetterStage",
    "~/Library/Caches/app.betterstage.macos",
    "~/Library/Preferences/app.betterstage.macos.plist",
  ]
end
