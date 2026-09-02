# 272 Solutions Homebrew tap

```sh
brew tap 272solutions/tap
brew trust 272solutions/tap      # Homebrew requires trusting third-party casks
brew install --cask qivreno
```

The `brew trust` step is Homebrew's safeguard for taps outside the official
repositories — it asks you to confirm you trust this source before it will run
the cask. You can read exactly what it does in
[`Casks/qivreno.rb`](Casks/qivreno.rb) first.

[Qivreno](https://github.com/272Solutions/QIVRENO) is a free, MIT-licensed,
local-first desktop app for running a team of AI agents. The cask installs the
signed and notarized build from https://get.qivreno.ai.

`brew uninstall --cask qivreno` removes the app; add `--zap` to also remove
its data in `~/Library/Application Support` (your agents, tasks and Library
live there — `~/Qivreno` with your Shared files is never touched).
