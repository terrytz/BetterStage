cask "betterstage" do
  version "1.3.11"
  sha256 "c1852f4057116eae06a0bc0852075bd1a7c4c9b0916d672cbfc60b42c2a034ee"

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
