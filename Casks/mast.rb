cask "mast" do
  version "1.2.4"
  sha256 "73a72be20c3bec4d835f1aca6d7e2eea85fea69165fdb31b3733d24048e41cd3"

  url "https://usemast.sh/releases/Mast-#{version}.dmg"
  name "Mast"
  desc "Menu bar dashboard surfacing every git repo on your machine"
  homepage "https://usemast.sh/"

  # Read the latest version from usemast.sh/releases/latest-mac.yml — the
  # same flat-file manifest electron-updater consumes. One source of truth
  # across the website Direct Download link, the in-app updater, and brew.
  livecheck do
    url "https://usemast.sh/releases/latest-mac.yml"
    regex(/^version:\s*(\S+)/i)
  end

  # Mast ships its own electron-updater that polls usemast.sh/releases/
  # for newer versions and offers the "Download update" tray entry. Brew
  # should not interfere — set auto_updates so `brew upgrade` skips it.
  auto_updates true
  depends_on macos: ">= :monterey"

  app "Mast.app"

  zap trash: [
    "~/Library/Application Support/Mast",
    "~/Library/Caches/sh.usemast.mast",
    "~/Library/Logs/Mast",
    "~/Library/Preferences/sh.usemast.mast.plist",
    "~/Library/Saved Application State/sh.usemast.mast.savedState",
  ]
end
