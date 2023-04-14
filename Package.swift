// swift-tools-version: 5.6
import PackageDescription

let package = Package(
  name: "TreeSitterObjC",
  platforms: [.macOS(.v10_13), .iOS(.v11)],
  products: [.library(name: "TreeSitterObjC", targets: ["TreeSitterObjC"])],
  targets: [
    .target(
      name: "TreeSitterObjC",
      path: ".",
      exclude: [
        "binding.gyp",
        "bindings",
        "Cargo.toml",
        "LICENSE",
        "package.json",
        "README.md",
        "test",
      ],
      sources: [
        "src/parser.c",
      ],
      publicHeadersPath: "bindings/swift",
      cSettings: [.headerSearchPath("src")]
    )
  ]
)
