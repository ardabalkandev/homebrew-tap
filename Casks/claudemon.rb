cask "claudemon" do
  version "1.1.2"
  sha256 "b1944b4053fb227e386f4e4b521f7fb61d06d6f1cefe676d637d548a918c77cb"

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
