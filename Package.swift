// swift-tools-version:6.2
import PackageDescription

let package = Package(
    name: "fs-ios-sdk-dev",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "fs-ios-sdk-dev",
            targets: ["fsiossdk_wrapper"]
        )
    ],
    targets: [
        .target(
            name: "fsiossdk_wrapper",
            dependencies: [
                .target(name: "fsiossdk")
            ],
            path: "Sources/Wrapper"
        ),
        .binaryTarget(
            name: "fsiossdk",
            path: "fsiossdk.xcframework"
        )
    ]
)
