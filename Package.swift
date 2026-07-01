// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "ios-sdk",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "MedalliaDigital", targets: ["MedalliaDigitalWrapper"]),
        .library(name: "MedalliaDXA", targets: ["MedalliaDXAWrapper"])
    ],
    dependencies: [
        .package(name: "digital-ios-sdk", url: "https://github.com/medallia/digital-ios-sdk", .upToNextMajor(from: "4.10.0")),
        .package(name: "dxa-ios-sdk", url: "https://github.com/medallia/dxa-ios-sdk", .upToNextMajor(from: "3.8.0"))
    ],
    targets: [
        .target(name: "MedalliaDigitalWrapper", dependencies: [
            .product(name: "MedalliaDigitalSDK", package: "digital-ios-sdk")
        ], path: "Sources/MedalliaDigitalWrapper"),
        .target(name: "MedalliaDXAWrapper", dependencies: [
            .product(name: "medallia-dxa-ios-sdk", package: "dxa-ios-sdk"),
            .product(name: "medallia-dxa-ios-objc-sdk", package: "dxa-ios-sdk")
        ], path: "Sources/MedalliaDXAWrapper")
    ]
)
