cask "claudemon" do
  version "1.1.3"
  sha256 "68993f1410a8506bac97b4313dffa6f7c84a05095141156274db0ce5d54ae6cb"

  url "https://github.com/ardabalkandev/claudemon/releases/download/v#{version}/Claudemon.dmg"
  name "Claudemon"
  desc "Menu-bar app showing live Claude Code usage limits"
  homepage "https://github.com/ardabalkandev/claudemon"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Claudemon.app"

  zap trash: [
    "~/Library/Caches/com.claudemon.app",
    "~/Library/Group Containers/group.com.claudemon.app",
    "~/Library/HTTPStorages/com.claudemon.app",
    "~/Library/Preferences/com.claudemon.app.plist",
  ]
end
