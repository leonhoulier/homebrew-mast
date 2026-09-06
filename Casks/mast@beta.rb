cask "mast@beta" do
  version "1.4.0"
  sha256 "7b7f027e97967e4029475ea691528eeea2a9ee29849c6c133a5a9c36def2ad2a"

  url "https://usemast.sh/releases/beta/#{version}/Mast-#{version}.dmg"
  name "Mast Beta"
  desc "Release candidate of the Mast development dashboard"
  homepage "https://usemast.sh/releases/beta/1.4.0/"

  livecheck do
    skip "Release candidates are promoted after compatibility acceptance"
  end

  auto_updates true
  conflicts_with cask: "mast"
  depends_on macos: :monterey

  app "Mast.app"
end
