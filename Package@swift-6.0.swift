// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "LiveKitUniFFI",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .macCatalyst(.v14),
        .visionOS(.v2),
        .tvOS(.v17),
    ],
    products: [
        .library(
            name: "LiveKitUniFFI",
            targets: ["LiveKitUniFFI"]
        )
    ],
    targets: [
        .target(
            name: "LiveKitUniFFI",
            dependencies: ["RustLiveKitUniFFI"]
        ),
        .binaryTarget(
            name: "RustLiveKitUniFFI",
            url: "https://github.com/livekit/livekit-uniffi-xcframework/releases/download/0.0.3/RustLiveKitUniFFI.xcframework.zip",
            checksum: "c21c932fc91a44c34f0b6aa896a91fdcbc1e55927974ad15b8cdc5115b95ec3d"
        )
    ]
)
