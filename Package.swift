// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "gnutls",
    products: [
        .library(name: "gmp", targets: ["gmp"]),
        .library(name: "nettle", targets: ["nettle"]),
        .library(name: "hogweed", targets: ["hogweed"]),
        .library(name: "gnutls", targets: ["gnutls"]),
    ],
    targets: [
        .binaryTarget(
            name: "gmp",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/gmp.xcframework.zip",
            checksum: "cfa8dc023bc46f593c72d2e19fc1429136fccaa53434513c36d9cea8ea1a959f"
        ),
        .binaryTarget(
            name: "nettle",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/nettle.xcframework.zip",
            checksum: "dbc1aa0104d75296a2b5c43b332fc6ceb74f3a317d92dea07f52992f86bbf925"
        ),
        .binaryTarget(
            name: "hogweed",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/hogweed.xcframework.zip",
            checksum: "388d0fd97d63c4db82895818115de6c73dd58876cfbdc4fb06d2f65a3e995f03"
        ),
        .binaryTarget(
            name: "gnutls",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/gnutls.xcframework.zip",
            checksum: "18dfa65527202496b2eb7c453c30e8106f4fa9a431b84cd0bf32d0cdd3930d0e"
        )
    ]
)
