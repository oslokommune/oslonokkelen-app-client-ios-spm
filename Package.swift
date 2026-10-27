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
            url: "https://github.com/oslokommune/oslonokkelen-app-client-ios-spm/releases/download/v1.0.15/OslonokkelenAppClient.xcframework.zip",
            checksum: "909f2bfb91394fa68f65f974374b12ca961bf3351bcd708093fd73e7dc92c285"
        )
    ]
)
