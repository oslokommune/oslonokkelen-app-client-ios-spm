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
            url: "https://github.com/oslokommune/oslonokkelen-app-client-ios-spm/releases/download/spm-v1.0.6/OslonokkelenAppClient.xcframework.zip",
            checksum: "003ac09d032f5a7b0f5286a26f05a763c5ba558f15d6e7a7630152dac1499a3f"
        )
    ]
)
