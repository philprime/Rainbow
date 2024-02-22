// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "Rainbow",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_12),
    ],
    products: [
        .library(name: "Rainbow", targets: ["Rainbow", "RainbowSwiftUI"]),
    ],
    targets: [
        .target(name: "Rainbow"),
        .target(name: "RainbowSwiftUI", dependencies: ["Rainbow"]),
        .testTarget(name: "RainbowTests", dependencies: ["Rainbow"], resources: [
            .process("Resources"),
        ]),
        .testTarget(name: "RainbowSwiftUITests", dependencies: ["RainbowSwiftUI"], resources: [
            .process("Resources"),
        ]),
    ]
)
