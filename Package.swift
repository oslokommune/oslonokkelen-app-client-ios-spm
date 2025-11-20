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
            url: "https://github.com/oslokommune/oslonokkelen-app-client-ios-spm/releases/download/spm-v1.0.1/OslonokkelenAppClient.xcframework.zip",
            checksum: "ed9ed62a3e58ea4b35fa3cc1ef971c416a1050abc3f2e32520671f8b506de307"
        )
    ]
)
