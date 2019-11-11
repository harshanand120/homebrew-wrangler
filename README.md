# Wrangler for Homebrew

This is an unofficial [Homebrew][] tap for Cloudflare's [Wrangler][] CLI.

Mac users can use this formula to easily install and update the Wrangler CLI. Both dev and stable channels are supported.

> This README is a modified version of the one found at [dart-lang/homebrew-dart][dartbrew], the official tap for the [Dart][] programming language.

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

To install dev channel releases, instead of the stable ones, add a `--devel`
flag after the brew commands:

```shell
brew install wrangler-cli --devel
```

## Updating

Simply run:

```
brew update
brew upgrade wrangler-cli
```

## Documentation for formulae

- https://docs.brew.sh/Formula-Cookbook
- https://rubydoc.brew.sh/Formula

[homebrew]: http://brew.sh/
[wrangler]: https://github.com/cloudflare/wrangler
[dartbrew]: https://github.com/dart-lang/homebrew-dart
[dart]: https://dart.dev/
