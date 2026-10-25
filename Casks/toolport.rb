cask "toolport" do
  version "2.3.1"

  on_arm do
    sha256 "4cd0e1608e586227cecffbbfa4fe0792230c4f1170d2e2c82be69463e22235c3"
    url "https://github.com/btsouth/toolport/releases/download/v#{version}/Toolport_aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "b077bab97912a907437fc686aa9cab0c590f2dc3a1e249cab3ef3cc665409c4c"
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
