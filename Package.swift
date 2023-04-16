// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "sociomile-app-sdk-ios",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "App",
            targets: ["App", "SwiftyGif"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "App",
            url: "https://sociomile-sdk.s3.ap-southeast-1.amazonaws.com/sociomile-ios-sdk/sandbox/0.0.2/App.xcframework.zip",
            checksum: "7b27a575ae9c2738e370891f30df0a9d8fd1d15930892ca8cf7362fb1f1d4097"
        ),
        .binaryTarget(
            name: "SwiftyGif",
            path: "./Sources/SwiftyGif.xcframework"
        )
    ]
)
