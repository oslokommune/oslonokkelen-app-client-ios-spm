// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "oslonokkelen-app-client",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "OslonokkelenAppClient",
            targets: ["OslonokkelenAppClient"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "OslonokkelenAppClient",
            url: "https://github.com/oslokommune/oslonokkelen-app-client-ios-spm/releases/download/spm-v1.0.7/OslonokkelenAppClient.xcframework.zip",
            checksum: "88adc5c527290a49409c0238f97127a25106f0785558bf72e5cd2c0549342446"
        )
    ]
)
