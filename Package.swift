// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "MultiPeer",
    products: [
        .library(
            name: "MultiPeer",
            targets: ["MultiPeer"])
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "MultiPeer",
            dependencies: [],
            path: "Sources")
    ]
)
