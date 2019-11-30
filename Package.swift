// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Render",
  platforms: [
    .iOS(.v10)
  ],
  products: [
    // Products define the executables and libraries produced by a package, and make them visible to other packages.
    .library(
      name: "CoreRender",
      targets: ["CoreRender"]),
    .library(
      name: "Render",
      targets: ["Render", "CoreRender"]),
  ],
  dependencies: [
    // Dependencies declare other packages that this package depends on.
    // .package(url: /* package url */, from: "1.0.0"),
  ],
  targets: [
    // Targets are the basic building blocks of a package. A target can define a module or a test suite.
    // Targets can depend on other targets in this package, and on products in packages which this package depends on.
    .target(
      name: "CoreRender",
      dependencies: []),
    .target(
      name: "Render",
      dependencies: ["CoreRender"]),
    .testTarget(
      name: "CoreRenderTests",
      dependencies: ["CoreRender"]),
    .testTarget(
      name: "RenderTests",
      dependencies: ["CoreRender", "Render"]),
  ]
)
