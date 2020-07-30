# Wrangler for Homebrew

This is an unofficial [Homebrew][] tap for Cloudflare's [Wrangler][] CLI.

Mac users can use this formula to easily install and update the Wrangler CLI. Both dev and stable channels are supported.

## Initial setup

If you don't have Homebrew, install it from their [homepage][homebrew].

Then, add this tap:

```
brew tap bvanrijn/wrangler
```

## Installing

To install Wrangler CLI:

```
brew install wrangler-cli
```

## Dev Releases

To install dev channel releases, instead of the stable ones, add a `--head`
flag after the brew commands:

```shell
brew install wrangler-cli --head
```

## Updating

Simply run:

```
brew update
brew upgrade wrangler-cli
```

## Documentation for formulae

- [https://docs.brew.sh/Formula-Cookbook][cookbook]
- https://rubydoc.brew.sh/Formula

## Acknowledgements

This README is a modified version of the one found at [dart-lang/homebrew-dart][dartbrew], the official tap for the [Dart][] programming language.

The `audit` and `style` [CI jobs][ci] are based [two commands][adopt] from the AdoptOpenJDK tap.
The `test-stable` and `test-devel` steps are based on examples from the [Formula Cookbook][cookbook].

[adopt]: https://github.com/AdoptOpenJDK/homebrew-openjdk/blob/master/.github/PULL_REQUEST_TEMPLATE.md
[ci]: https://github.com/bvanrijn/homebrew-wrangler/blob/master/.github/workflows/ci.yml
[cookbook]: https://docs.brew.sh/Formula-Cookbook
[dart]: https://dart.dev/
[dartbrew]: https://github.com/dart-lang/homebrew-dart
[homebrew]: http://brew.sh/
[wrangler]: https://github.com/cloudflare/wrangler
