// swift-tools-version: 5.7 test
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FlyCommonTestFramework",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "FlyCommonTestFramework",
            targets: ["FlyCommonTestFramework"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
         .package(url: "https://github.com/iziz/libPhoneNumber-iOS", from: "0.8"),
         .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.6.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "FlyCommonTestFramework",
            dependencies: []),
        .testTarget(
            name: "FlyCommonTestFrameworkTests",
            dependencies: ["FlyCommonTestFramework"]),
    ]
)
