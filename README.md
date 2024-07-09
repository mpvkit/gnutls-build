# gnutls-build

build scripts for [gnutls](https://github.com/gnutls/gnutls)

## Installation

### Swift Package Manager

```
https://github.com/mpvkit/gnutls-build.git
```

## How to build

```bash
swift run --package-path scripts

```

or 

```bash
# deployment platform: macos,ios,tvos,maccatalyst
swift run --package-path scripts build platforms=ios,macos
```