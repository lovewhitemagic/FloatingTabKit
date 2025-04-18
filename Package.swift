// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "FloatingTabKit",
    platforms: [
        .iOS(.v15),
        .macOS(.v12)   // ✅ 如果你要在 macOS 也支持
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
