// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "Rainbow",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_12),
    ],
    products: [
        .library(name: "Rainbow", targets: ["Rainbow", "RainbowSwiftUI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Quick/Quick", .upToNextMajor(from: "v2.2.1")),
        .package(url: "https://github.com/Quick/Nimble",  .upToNextMajor(from: "8.0.7")),
    ],
    targets: [
        .target(name: "Rainbow"),
        .target(name: "RainbowSwiftUI"),
        .testTarget(name: "RainbowTests", dependencies: [
            "Rainbow",
            "Quick",
            "Nimble"
        ]),
    ]
)
