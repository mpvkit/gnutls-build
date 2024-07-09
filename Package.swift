// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "gnutls",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13)],
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
            checksum: "140ee2c86536c7fd0c51c13571ed0efd949e83d02d998ccbcf8fa93140ffd030"
        ),
        .binaryTarget(
            name: "nettle",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/nettle.xcframework.zip",
            checksum: "5aaf1e0327c9fb43da7ecc389bed01cd4206ee7565e12d7568d54a8d391c1d8d"
        ),
        .binaryTarget(
            name: "hogweed",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/hogweed.xcframework.zip",
            checksum: "657e3a4d8223a17bd6d7594a427d7e8bc2271eabf01ca2df2885149880a29423"
        ),
        .binaryTarget(
            name: "gnutls",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/gnutls.xcframework.zip",
            checksum: "9c7722c9605634e01637f3980d0187564039100c6a8d46bca534ae7b0f119e91"
        )
    ]
)
