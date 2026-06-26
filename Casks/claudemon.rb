cask "claudemon" do
  version "1.3.1"
  sha256 "0006eb15ea4d7ec13910ce0fa636841a5b4d887806b41fbc7301478cb5bc30cf"

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
