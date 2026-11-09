cask "betterstage" do
  version "2.3.2"
  sha256 "7244de73778b7c5b4ce6496ca45d5e7fd6c7348f6084f5cfdcb9d3e55b189dcb"

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
