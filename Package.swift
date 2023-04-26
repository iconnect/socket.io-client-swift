// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "SocketIO",
    products: [
        .library(name: "SocketIO", targets: ["SocketIO"])
    ],
    dependencies: [
        .package(url: "https://github.com/daltoniam/Starscream", .upToNextMajor(from: "3.0.0")),
    ],
    targets: [
        .target(name: "SocketIO", dependencies: ["Starscream"]),
        .testTarget(name: "TestSocketIO", dependencies: ["SocketIO"]),
    ]
)
