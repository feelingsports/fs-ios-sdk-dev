// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "fsiossdk",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "fsiossdk",
            targets: ["fsiossdk_wrapper"])
    ]
    targets: [
        .target(
            name: "fsiossdk_wrapper",
            dependencies: [
                .target(name: "fsiossdk")
            ],
            path: "Sources/Wrapper",
            publicHeadersPath: ""
        ),
        .binaryTarget(
            name: "fsiossdk",
            path: "fsiossdk.xcframework")
    ])