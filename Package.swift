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
            url: "https://github.com/mpvkit/libsmbclient-build/releases/download/3.8.3/gmp.xcframework.zip",
            checksum: "126c63d62c9081e820b223ae36679f1bedee20efa88d63fc7ba5edac33aaabbc"
        ),
        .binaryTarget(
            name: "nettle",
            url: "https://github.com/mpvkit/libsmbclient-build/releases/download/3.8.3/nettle.xcframework.zip",
            checksum: "288ef1fe3a01721cc326148ea15f0c16c282a42cadb3f0de6df5c16680105d57"
        ),
        .binaryTarget(
            name: "hogweed",
            url: "https://github.com/mpvkit/libsmbclient-build/releases/download/3.8.3/hogweed.xcframework.zip",
            checksum: "6885465672a1e697ea3919fc65c7c9115016a0b546fbc5a6019ee85272f20c3d"
        ),
        .binaryTarget(
            name: "gnutls",
            url: "https://github.com/mpvkit/libsmbclient-build/releases/download/3.8.3/gnutls.xcframework.zip",
            checksum: "bc45270ace9a9bcdf9d1e00f8d442880ac67706b81b7ef2b0d48ab1077de0964"
        )
    ]
)
