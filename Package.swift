// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ApprikVCKit-SPM",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ApprikVCKit-SPM",
            targets: ["ApprikVCKit-SPM"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "ApprikVCKit-SPM",
            url: "https://objectstore.e2enetworks.net/iosframeworks/ios/2026/04/09/1775712800455_6060bb32_apprikvckit.zip",
            checksum: "f616df6bac1cead0a03a459e23fb5a5cff4c4577dcc4b689a4875eaa5e1a0cae"
        )
    ]
)




