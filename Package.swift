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
            url: "https://github.com/oslokommune/oslonokkelen-app-client-ios-spm/releases/download/v1.0.11/OslonokkelenAppClient.xcframework.zip",
            checksum: "d8386e42f8f503558a41981dee1c3cde20da1cbb7d5ab473f2da00dbdc8a00d1"
        )
    ]
)
