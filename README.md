# pvbaudin/homebrew-tap

Homebrew formulae for my tools.

```sh
brew tap pvbaudin/tap
brew trust pvbaudin/tap      # trust every formula in this tap
brew install pvbaudin/tap/lavascii
brew install pvbaudin/tap/ascii-game-of-life   # installs the `life` command
```

Homebrew 7 and later only load formulae from third-party taps that you have
trusted. `brew trust pvbaudin/tap` trusts the whole tap; to trust a single
formula instead, use `brew trust --formula pvbaudin/tap/<name>`. On older
Homebrew, skip the `brew trust` line.

| Formula | Description |
|---|---|
| [lavascii](https://github.com/pvbaudin/lavascii) | Full-color ASCII lava lamp for your terminal; pipe any text into it |
| [ascii-game-of-life](https://github.com/pvbaudin/ascii-game-of-life) | Full-color braille Conway's Game of Life for your terminal; pipe any text into it (command: `life`) |
