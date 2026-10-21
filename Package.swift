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
            url: "https://github.com/oslokommune/oslonokkelen-app-client-ios-spm/releases/download/v1.0.14/OslonokkelenAppClient.xcframework.zip",
            checksum: "e3506afceacab31d8dfea30218a7fdc6dda24c327b278eeb95ac62e155a6f0d1"
        )
    ]
)
