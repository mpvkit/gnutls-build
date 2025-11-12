// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "gnutls",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13)],
    products: [
        .library(name: "gnutls", targets: ["_gnutls"]),
    ],
    targets: [
        // Need a dummy target to embedded correctly.
        // https://github.com/apple/swift-package-manager/issues/6069
        .target(
            name: "_gnutls",
            dependencies: ["gmp", "nettle", "hogweed", "gnutls"],
            path: "Sources/_Dummy"
        ),
        //AUTO_GENERATE_TARGETS_BEGIN//

        .binaryTarget(
            name: "gmp",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.8-xcode26/gmp.xcframework.zip",
            checksum: "5b162a9c94ac18fed854dfca2ce9265c828367e307c2c638352ab7ecaa8d4597"
        ),

        .binaryTarget(
            name: "nettle",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.8-xcode26/nettle.xcframework.zip",
            checksum: "01521200be85b5e11eae23136a9fc359723fa0eeef08135ab79741aba45c8253"
        ),
        .binaryTarget(
            name: "hogweed",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.8-xcode26/hogweed.xcframework.zip",
            checksum: "4fbb5330ebca9c12e8bf08acb027f310b3ab33400ddbae04e249e2de47d52371"
        ),

        .binaryTarget(
            name: "gnutls",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.8-xcode26/gnutls.xcframework.zip",
            checksum: "8a17bd6f1aac58a22a88fdbf645a73cb7cc3f6510996a2be488e5b6c9bb2148b"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
