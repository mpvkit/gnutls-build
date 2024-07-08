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
            checksum: "da01cb6deba5ea8fc6cbff3958d1659fb8649a03a24898d1ea0dcfe87be8e4ee"
        ),
        .binaryTarget(
            name: "nettle",
            url: "https://github.com/mpvkit/libsmbclient-build/releases/download/3.8.3/nettle.xcframework.zip",
            checksum: "fdf700e0d74f5c93eaeccd15e0b878d26e4a793a31c3f9035c6a9260c70491d1"
        ),
        .binaryTarget(
            name: "hogweed",
            url: "https://github.com/mpvkit/libsmbclient-build/releases/download/3.8.3/hogweed.xcframework.zip",
            checksum: "89792a1350df6c8ec2311e875a5eb26e261a6a08a1667ad8b7b1afc05725c226"
        ),
        .binaryTarget(
            name: "gnutls",
            url: "https://github.com/mpvkit/libsmbclient-build/releases/download/3.8.3/gnutls.xcframework.zip",
            checksum: "9350efc8cab8ff7823bcd6220e959ff1f0be70a314ccdea74d0e1ceed577fc76"
        )
    ]
)
