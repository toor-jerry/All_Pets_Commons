// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AllPetsCommons",
    platforms: [.iOS(.v16)],
    products: [
        // AllPets libraries
        .library(
            name: "AllPetsCommons",
            targets: ["AllPetsCommons"]),
        .library(name: "AllPetsColors",
                 targets: ["AllPetsColors"]),
        .library(name: "AllPetsImages",
                 targets: ["AllPetsImages"])
    ],
    targets: [
        // AllPets libraries
        .target(
            name: "AllPetsCommons",
            dependencies: [
                "AllPetsColors",
                "AllPetsImages"
            ]),
        
            .target(
                name: "AllPetsColors",
                path: "./Sources/AllPetsColors"),
        .target(
            name: "AllPetsImages",
            path: "./Sources/AllPetsImages"),
        
        // Tests
        .testTarget(
            name: "AllPetsCommonsTests",
            dependencies: ["AllPetsCommons"]),
    ]
)
