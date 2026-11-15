# Toolport Homebrew tap

One local gateway for every MCP server, shared by every AI client. https://toolport.app

## Install

```sh
brew install --cask btsouth/toolport/toolport
```

That taps this repo and installs the latest signed, notarized Toolport for your Mac
(Apple Silicon or Intel). Upgrade with `brew upgrade --cask toolport`; upgrades keep
your client connections and data.

## Uninstall

```sh
brew uninstall --cask toolport          # restores client configs, keeps data
brew uninstall --cask --zap toolport    # also removes Toolport data and credentials
```

See [docs/uninstall.md](https://github.com/btsouth/toolport/blob/main/docs/uninstall.md).

The cask is copied from the main repo (`packaging/homebrew/toolport.rb` in
[btsouth/toolport](https://github.com/btsouth/toolport)) at each release tag; only
the version and sha256 lines are filled in here. Change the cask there, not here.
