cask "toolport" do
  version "2.3.4"

  on_arm do
    sha256 "6bcd3d20548c3489cfbfb99eab63c28a8c7b29e45a112d44830f68e20317e08e"
    url "https://github.com/btsouth/toolport/releases/download/v#{version}/Toolport_aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "763a0e09764e1668a81a0564090c28ae8e68b988e81fd8feec350aae5f493a02"
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
