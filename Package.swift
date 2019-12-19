// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WS",
    products: [
        .executable(name: "ws", targets: ["WS"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "Core",
            dependencies: [],
            path: "Sources/Core"),
        .target(
            name: "WS",
            dependencies: ["Core"],
            path: "Sources/WS"),
        .testTarget(
            name: "WSTests",
            dependencies: ["WS"],
            path: "Tests/WSTests")
    ]
)
