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
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.8-xcode/gmp.xcframework.zip",
            checksum: "78fa5fb163f96aecdbe58fd7d6ad5733071f475e90bac8550adfcd21907ab36e"
        ),

        .binaryTarget(
            name: "nettle",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.8-xcode/nettle.xcframework.zip",
            checksum: "cdfbeec0d0c998926fa153a003c55242f5f85cd82187e041e0fd9ebd69835fb8"
        ),
        .binaryTarget(
            name: "hogweed",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.8-xcode/hogweed.xcframework.zip",
            checksum: "5934409a34aedd567e05f6399384f51d34275e5460a42008745ab9c5e75a9080"
        ),

        .binaryTarget(
            name: "gnutls",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.8-xcode/gnutls.xcframework.zip",
            checksum: "3a0b36c8d68a55bf0c3c1cbb2a95e2a2623462d6c94cc132508888a99f2aa693"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
