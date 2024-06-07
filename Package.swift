// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "redirect-objects",
    platforms: [.macOS(.v10_15)],
    products: [.library(name: "RedirectObjects", targets: ["RedirectObjects"])],
    dependencies: [
        .package(path: "../feather-objects"),
//        .package(url: "https://github.com/xcode73/feather-objects.git", branch: "test-dev")
    ],
    targets: [
        .target(
            name: "RedirectObjects",
            dependencies: [
                .product(
                    name: "FeatherObjects",
                    package: "feather-objects"
                )
            ]
        ),
    ],
    swiftLanguageVersions: [.v5]
)
