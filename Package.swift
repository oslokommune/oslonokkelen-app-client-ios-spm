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
            url: "https://github.com/oslokommune/oslonokkelen-app-client-ios-spm/releases/download/spm-v1.0.2/OslonokkelenAppClient.xcframework.zip",
            checksum: "4c0e50811987618f94b2569985362c3ee28557d12d3dfa38cd9451f9fe084bb7"
        )
    ]
)
