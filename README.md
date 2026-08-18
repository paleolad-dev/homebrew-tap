# Green Dotter — Homebrew tap

Official Homebrew tap for [Green Dotter](https://green-dotter.com/), a free desktop app that keeps
your Mac registering as active so it does not go idle, sleep or start the screensaver while you are
still at your desk.

```bash
brew install --cask paleolad-dev/tap/green-dotter
```

Two modes: **Wiggle** moves the cursor in a smooth, natural pattern without clicking anything, and
**Click** sends clicks only inside a screen area you draw yourself, at a randomised interval you
set. It pauses the moment you touch the mouse or keyboard and resumes after a delay you choose.
A global emergency stop (F8, or ⌘⇧.) is always available.

Free. No account, no sign-in, no ads. Runs entirely on your own machine.

- Universal build — Intel and Apple Silicon, macOS 11 (Big Sur) or later
- Signed and notarised with a Developer ID
- Also available for Windows, including on the Microsoft Store

macOS will ask for **Accessibility** permission the first time you start a session; that is Apple's
standard requirement for any app that automates mouse input.

## Uninstalling

```bash
brew uninstall --cask green-dotter          # remove the app
brew uninstall --zap --cask green-dotter    # also remove its settings
```
