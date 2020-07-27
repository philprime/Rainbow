// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "Rainbow",
    platforms: [
        .iOS(.v10),
        .macOS(.v10_12),
    ],
    products: [
        .library(name: "Rainbow", targets: ["Rainbow"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Quick/Quick", .upToNextMajor(from: "2.2.0")),
        .package(url: "https://github.com/Quick/Nimble",  .upToNextMajor(from: "8.0.7")),
    ],
    targets: [
        .target(name: "Rainbow" ),
        .testTarget(name: "RainbowTests", dependencies: [
            "Rainbow",
            "Quick",
            "Nimble"
        ]),
    ]
)
