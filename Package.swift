// swift-tools-version:5.2

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
        .target(name: "RainbowSwiftUI"),
        //dev .testTarget(name: "RainbowTests", dependencies: ["Rainbow"]),
    ]
)
