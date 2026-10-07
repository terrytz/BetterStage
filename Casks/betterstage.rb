cask "betterstage" do
  version "2.2.2"
  sha256 "b78d5021389344e7426ca05ae5ff652905f4b8396e9753acb02d99605d23c4ac"

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
