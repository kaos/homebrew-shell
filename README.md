# homebrew-shell

[![Buils Status](https://github.com/kaos/homebrew-shell/actions/workflows/test-tap.yml/badge.svg?branch=master)](https://github.com/kaos/homebrew-shell/actions/workflows/test-tap.yml)

Brew tap with shell stuff

## Install

```shell
brew tap kaos/shell
```

### Bleeding edge

Are releases coming too slow for you. Want to use new features not in
any release?

To install the latest and greatest (and possibly buggiest/most fixed)
version, use the `--HEAD` option to `brew`.

```shell
brew install --HEAD <formula>
```

## Featured Formulae

### Bats libs

[Bats](https://github.com/bats-core/bats-core) is a
[TAP](http://testanything.org/)-compliant testing framework for
Bash. It provides a simple way to verify that the UNIX programs you
write behave as expected.

#### Bats helper library

Bats helper library is a set of common functions to
use in your bats tests:

- [Common assertions](https://github.com/bats-core/bats-assert)
- [Common filesystem assertions](https://github.com/bats-core/bats-file)

```shell
brew install bats-assert
brew install bats-file
```

#### Bats mock

[bats-mock](https://github.com/jasonkarns/bats-mock) by
[@jasonkarns](https://github.com/jasonkarns)

```shell
brew install bats-mock
```

### JSON

#### TickTick

Put JSON in your bash scripts with
[TickTick](https://github.com/kristopolous/TickTick) by
[@kristopolous](https://github.com/kristopolous)

```shell
brew install ticktick
```

### Editors

#### Hecate

The [hex editor](https://github.com/evanmiller/hecate) from hell,
according to [@evanmiller](https://github.com/evanmiller)

```shell
brew install hecate
```
