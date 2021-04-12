// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Calculator",
    products: [
        .library(name: "CalculatorCore", targets: ["CalculatorCore"])
    ],
    targets: [
        .target(name: "CalculatorCore", dependencies: [
            "CalculatorLogger"
        ]),
        .target(name: "CalculatorLogger"),
        .target(name: "Calculator",
                dependencies: ["CalculatorCore"]),
        .testTarget(name: "CalculatorTests",
                    dependencies: ["Calculator"]),
    ]
)
