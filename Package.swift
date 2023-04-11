// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "SwiftXYZ",
    platforms: [.macOS(.v12)],
    products: [
        .executable(
            name: "SwiftXYZ",
            targets: ["SwiftXYZ"]
        )
    ],
    dependencies: [
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.7.0")
    ],
    targets: [
        .executableTarget(
            name: "SwiftXYZ",
            dependencies: ["Publish"]
        )
    ]
)
