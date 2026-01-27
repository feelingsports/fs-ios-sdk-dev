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
