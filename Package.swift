// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterOpenscad",
    products: [
        .library(name: "TreeSitterOpenscad", targets: ["TreeSitterOpenscad"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ChimeHQ/SwiftTreeSitter", from: "0.8.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterOpenscad",
            dependencies: [],
            path: ".",
            sources: [
                "src/parser.c",
                // NOTE: if your language has an external scanner, add it here.
            ],
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
        ),
        .testTarget(
            name: "TreeSitterOpenscadTests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterOpenscad",
            ],
            path: "bindings/swift/TreeSitterOpenscadTests"
        )
    ],
    cLanguageStandard: .c11
)
