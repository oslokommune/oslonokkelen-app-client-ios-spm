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
            url: "https://github.com/oslokommune/oslonokkelen-app-client-ios-spm/releases/download/v1.0.10/OslonokkelenAppClient.xcframework.zip",
            checksum: "b959370c30059816ac8a2495dae8136a6ada50a7966291b349767c4221c2dd17"
        )
    ]
)
