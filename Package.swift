// swift-tools-version: 6.0
// Generated from Rust template

import PackageDescription

let package = Package(
    name: "LiveKitUniFFI",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .macCatalyst(.v14),
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
            url: "https://github.com/livekit/livekit-uniffi-xcframework/releases/download/0.1.9/RustLiveKitUniFFI.xcframework.zip",
            checksum: "8db93e8ccd9f22263c39855808da48a4d6b5d620d8f6e43ab4501ede847b23eb"
        )
    ],
    // Workaround for cargo-swift pinning uniffi_bindgen 0.31.1: its generated
    // callback `vtablePtr` isn't `nonisolated(unsafe)`, so the bindings fail the
    // Swift 6 language mode. Remove once cargo-swift ships uniffi 0.31.2
    // (antoniusnaumann/cargo-swift#102).
    swiftLanguageModes: [.v5]
)
