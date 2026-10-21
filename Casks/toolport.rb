cask "toolport" do
  version "2.3.0"

  on_arm do
    sha256 "905a49026e74c2b3cd655dea1953847895176cd7eab338d56030f62a34367d33"
    url "https://github.com/btsouth/toolport/releases/download/v#{version}/Toolport_aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "9afa1bcc8672d158fb47f5fd443ed66cf63e5709233747ca0841dd876a8cf85c"
    url "https://github.com/btsouth/toolport/releases/download/v#{version}/Toolport_x86_64-apple-darwin.dmg"
  end

  name "Toolport"
  desc "One local gateway for every MCP server, shared by every AI client"
  homepage "https://toolport.app/"

  # livecheck reports the latest GitHub tag for `brew livecheck`. brew install
  # and brew upgrade still use the pinned version + sha256 above. Bump those
  # on each published release (see docs/RELEASING.md in the app repo).
  livecheck do
    url :url
    strategy :github_latest
  end

  app "Toolport.app"

  # The gateway is a nested helper the app manages; no separate binaries to link.
  zap trash: [
    "~/Library/Application Support/Conduit",
    "~/Library/Application Support/Toolport",
    "~/Library/Caches/com.tsout.conduit",
    "~/Library/HTTPStorages/com.tsout.conduit",
    "~/Library/Preferences/com.tsout.conduit.plist",
    "~/Library/Saved Application State/com.tsout.conduit.savedState",
  ]
end
