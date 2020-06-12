// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "IcescoGithubIo",
    products: [
        .executable(
            name: "IcescoGithubIo",
            targets: ["IcescoGithubIo"]
        )
    ],
    dependencies: [
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.6.0")
    ],
    targets: [
        .target(
            name: "IcescoGithubIo",
            dependencies: ["Publish"]
        )
    ]
)