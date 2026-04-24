cask "mast" do
  version "1.1.0"
  sha256 "5ff9f49857671353b945ab23022e1451aa022c83be7e493f2261e146654c663f"

  url "https://github.com/leonhoulier/mast/releases/download/v#{version}/Mast-#{version}.dmg",
      verified: "github.com/leonhoulier/mast/"
  name "Mast"
  desc "macOS menu bar app that surfaces every git repo on your machine"
  homepage "https://usemast.sh/"

  auto_updates false
  depends_on macos: ">= :monterey"

  app "Mast.app"

  zap trash: [
    "~/Library/Application Support/Mast",
    "~/Library/Caches/com.leonhoulier.mast",
    "~/Library/Logs/Mast",
    "~/Library/Preferences/com.leonhoulier.mast.plist",
    "~/Library/Saved Application State/com.leonhoulier.mast.savedState",
  ]
end
