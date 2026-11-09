cask "betterstage" do
  version "2.3.3"
  sha256 "9b42f90bc39a2585e40f76b8997a98175bbd2741746196893ca0b76051cdecab"

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
