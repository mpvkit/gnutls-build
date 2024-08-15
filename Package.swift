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
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.6/gmp.xcframework.zip",
            checksum: "3778324f9f0eb3612eff3cf40184b99c13ba59c9715d5b1cb1b4fed2a6e9d986"
        ),

        .binaryTarget(
            name: "nettle",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.6/nettle.xcframework.zip",
            checksum: "5896222340532fe813f889baa33fe36e701ea7bf771c3bb4b2a8c92609718d0b"
        ),
        .binaryTarget(
            name: "hogweed",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.6/hogweed.xcframework.zip",
            checksum: "1803b8d70321419026b357ea1a32c208808cc5deea5f2a2fbb1caaff53b72ef3"
        ),

        .binaryTarget(
            name: "gnutls",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.6/gnutls.xcframework.zip",
            checksum: "1a09c17f4c7ff96d74062def690ff5ed21f9e28f0f096d1c4d1427247fbc76e8"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
