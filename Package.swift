// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "JWLibrary",
    platforms: [
        .iOS(.v11) // <- 최소사용버전 (라이브러리 추가됨에 따라 필요로함)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "JWLibrary",
            targets: ["JWLibrary"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        // 해당 라이브러리는 SnapKit을 필요로 함.
        .package(url: "https://github.com/SnapKit/SnapKit.git", .upToNextMajor(from: "5.0.1"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "JWLibrary",
            dependencies: [
                // SnapKit 사용시 dependencies 추가
                .product(name: "SnapKit", package: "SnapKit")
            ],
            resources:[.process("resources")]
            ),
        .testTarget(
            name: "JWLibraryTests",
            dependencies: ["JWLibrary"]),
    ]
)
