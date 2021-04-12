// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Calculator",
    targets: [
        .target(name: "Calculator"),
        .testTarget(name: "CalculatorTests", 
                    dependencies: ["Calculator"]),
    ]
)
