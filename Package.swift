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
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.8/gmp.xcframework.zip",
            checksum: "f65513d17e087372f544e31b24d26de9e1783834abab0b7a9d1f2648b92638aa"
        ),

        .binaryTarget(
            name: "nettle",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.8/nettle.xcframework.zip",
            checksum: "ea256b955bf6ef7e8bcfb26edc842b66ef3cd4670bd94100a1de2c1f38ee9d79"
        ),
        .binaryTarget(
            name: "hogweed",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.8/hogweed.xcframework.zip",
            checksum: "03901831e7b8afb4137ed65d0f1c0d3d22d5d678eb3726d500d89f41cf3a42ff"
        ),

        .binaryTarget(
            name: "gnutls",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.8/gnutls.xcframework.zip",
            checksum: "d42bc091f4fbe050e880b566f2f15cbc3042013cb78eba21d1a1ae140a6d9fb6"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
