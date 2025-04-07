// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "FloatingTabKit",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "FloatingTabKit", targets: ["FloatingTabKit"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "FloatingTabKit",
            dependencies: []
        )
    ]
)