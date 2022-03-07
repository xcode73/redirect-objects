// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "redirect-api",
    platforms: [
       .macOS(.v12),
    ],
    products: [
        .library(name: "RedirectApi", targets: ["RedirectApi"]),
    ],
    dependencies: [
        .package(url: "https://github.com/FeatherCMS/feather-api", .branch("main")),
    ],
    targets: [
        .target(name: "RedirectApi", dependencies: [
            .product(name: "FeatherApi", package: "feather-api"),
        ]),
    ]
)
