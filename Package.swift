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
            url: "https://github.com/oslokommune/oslonokkelen-app-client-ios-spm/releases/download/spm-v1.0.8/OslonokkelenAppClient.xcframework.zip",
            checksum: "fab0593ebb0b33c716396beeb140533a822582d52d4ffb731052e60ce18f68e9"
        )
    ]
)
