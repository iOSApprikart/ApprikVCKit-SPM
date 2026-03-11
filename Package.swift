// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ApprikVCKitSDK",        // ← SDK suffix
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "ApprikVCKitSDK", // ← SDK suffix
            targets: ["ApprikVCKitSDK"]
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
            name: "ApprikVCKit",   // ← matches xcframework exactly
            path: "./ApprikVCKit.xcframework"
        ),

        .target(
            name: "ApprikVCKitSDK", // ← SDK suffix, no conflict
            dependencies: [
                .target(
                    name: "ApprikVCKit",
                    condition: .when(platforms: [.iOS])
                ),
                .product(
                    name: "AppWebRTC",
                    package: "AppWebRTC-SPM",
                    condition: .when(platforms: [.iOS])
                )
            ],
            path: "Sources/ApprikVCKitSDK"
        )
    ]
)
