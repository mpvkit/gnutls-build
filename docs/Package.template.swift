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
            url: "\(gmp_url)",
            checksum: "\(gmp_checksum)"
        ),
        .binaryTarget(
            name: "nettle",
            url: "\(nettle_url)",
            checksum: "\(nettle_checksum)"
        ),
        .binaryTarget(
            name: "hogweed",
            url: "\(hogweed_url)",
            checksum: "\(hogweed_checksum)"
        ),
        .binaryTarget(
            name: "gnutls",
            url: "\(gnutls_url)",
            checksum: "\(gnutls_checksum)"
        )
    ]
)
