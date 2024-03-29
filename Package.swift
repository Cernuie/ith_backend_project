// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "backend",
    platforms: [
       .macOS(.v10_15)
    ],
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0"),
        .package(url: "https://github.com/vapor/fluent.git", from: "4.0.0"),
        .package(url: "https://github.com/vapor/fluent-mysql-driver.git", from: "4.0.0-beta"),


        
    ],
    targets: [
        .target(name: "App", dependencies: [
        .product(name: "Fluent", package: "fluent"),
        .product(name: "FluentMySQLDriver", package: "fluent-mysql-driver"),
        .product(name: "Vapor", package: "vapor"),
        
    ]
),

        .target(name: "Run", dependencies: [.target(name: "App")]),
        .testTarget(name: "AppTests", dependencies: [
            .target(name: "App"),
            .product(name: "XCTVapor", package: "vapor"),
        ])
    ]
)
