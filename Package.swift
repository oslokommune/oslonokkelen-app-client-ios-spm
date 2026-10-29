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
            url: "https://github.com/oslokommune/oslonokkelen-app-client-ios-spm/releases/download/v1.0.16/OslonokkelenAppClient.xcframework.zip",
            checksum: "3f797d736629cf95e305f803c6ea12c307c1f8c94aeb6e3865b707823471fa93"
        )
    ]
)
