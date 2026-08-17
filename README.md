# Toolport Homebrew tap

One local gateway for every MCP server, shared by every AI client. https://toolport.app

## Install

```sh
brew install --cask tsouth89/toolport/toolport
```

That taps this repo and installs the version pinned in `Casks/toolport.rb`
(signed and notarized, Apple Silicon or Intel). Upgrade with
`brew upgrade --cask toolport`. A new GitHub release does not change what
those commands install until this cask is bumped; see `docs/RELEASING.md`
in [tsouth89/toolport](https://github.com/tsouth89/toolport).

The cask is mirrored from the main repo (`packaging/homebrew/toolport.rb` in
[tsouth89/toolport](https://github.com/tsouth89/toolport)).
