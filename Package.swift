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
        .target(name: "RainbowSwiftUI"),
        //dev .testTarget(name: "RainbowTests", dependencies: ["Rainbow"], resources: [
        //dev     .process("Resources"),
        //dev ]),
        //dev .testTarget(name: "RainbowSwiftUITests", dependencies: ["RainbowSwiftUI"], resources: [
        //dev     .process("Resources"),
        //dev ]),
    ]
)
