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
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/gmp.xcframework.zip",
            checksum: "4e6c464136044a989990866060849885e75fe8d51e40c3eaa0df905031e72de3"
        ),

        .binaryTarget(
            name: "nettle",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/nettle.xcframework.zip",
            checksum: "36236b6ade0e0dacc394f30ec5bb9b6094b9d030a7c7c629b1808a5d6aca5f7b"
        ),
        .binaryTarget(
            name: "hogweed",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/hogweed.xcframework.zip",
            checksum: "f37d1d826a7d31ce8d5e05e7c8a05d73ed7d96ef7462d6232eeaebab785ea058"
        ),

        .binaryTarget(
            name: "gnutls",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/gnutls.xcframework.zip",
            checksum: "afbe9925bd0b6843e3cdd9122803ef7c107ae16761707c5aa506ec16c46928ff"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
