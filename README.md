# homebrew-mast

Homebrew tap for [Mast](https://usemast.sh/), a macOS menu bar app that
surfaces every git repo on your machine.

## Install

```bash
brew tap leonhoulier/mast
brew install --cask mast
```

Or in one line:

```bash
brew install --cask leonhoulier/mast/mast
```

## Upgrade

```bash
brew upgrade --cask mast
```

## Uninstall

```bash
brew uninstall --cask mast
brew untap leonhoulier/mast
```

## What this tap contains

- `Casks/mast.rb` — the Mast desktop app, signed + notarized DMG from
  [usemast.sh](https://usemast.sh/)
- `Casks/mast@beta.rb` — the opt-in [Mast 1.4 release candidate](https://usemast.sh/releases/beta/1.4.0/).
  Install with `brew install --cask leonhoulier/mast/mast@beta`.
  It uses the same application and preferences as stable Mast, so the two casks
  cannot be installed together. Uninstall the existing cask without `--zap`
  before switching. Compatibility acceptance is still in progress; this does
  not promote the stable cask or update feed.

The companion `mast` CLI is not yet bundled into the DMG. Until it is,
install the CLI by cloning the [main repo](https://github.com/leonhoulier/mast)
and running `npm run build:cli && npm link`.
