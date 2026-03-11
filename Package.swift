// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ApprikVCKit",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ApprikVCKit",
            targets: ["ApprikVCKit"]
        ),
    ],
    dependencies: [
           .package(
               url: "https://github.com/iOSApprikart/AppWebRTC-SPM",
               from: "1.0.1"
           )
       ],
    targets: [
        .binaryTarget(
            name: "ApprikVCKitBinary",
            path: "./ApprikVCKit.xcframework"
        ),
        .target(
            name: "ApprikVCKit",
            dependencies: [
                "ApprikVCKitBinary",
                .product(name: "AppWebRTC", package: "AppWebRTC-SPM")
            ],
            path: "Sources/ApprikVCKit"
        )
    ]
)
