// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AlamofireRSSParser",
    platforms: [.iOS(.v11),
                .macOS(.v10_13),
                .tvOS(.v11),
                .watchOS(.v4)],
    products: [.library(name: "AlamofireRSSParser", targets: ["AlamofireRSSParser"])],
    dependencies: [.package(url: "https://github.com/Alamofire/Alamofire.git",
                            from: "5.0.0")],
    targets: [.target(name: "AlamofireRSSParser",
                      dependencies: ["Alamofire"],
                      path: "Pod/Classes")],
    swiftLanguageVersions: [.v5]
)