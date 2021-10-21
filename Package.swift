// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Plani_DS",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Plani_DS",
            targets: ["Plani_DS"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/Quick/Quick", from: "3.0.0"),
        .package(url: "https://github.com/Quick/Nimble", from: "9.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(name: "Plani_DS"),
        .testTarget(
            name: "Plani_DSTests",
            dependencies: ["Plani_DS"]),
    ]
)
