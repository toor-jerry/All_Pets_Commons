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
                 targets: ["AllPetsImages"]),
        .library(name: "AllPetsFunctionalUtilities",
                 targets: ["AllPetsFunctionalUtilities"]),
        .library(name: "AllPetsLocalizable",
                 targets: ["AllPetsLocalizable"])
    ],
    targets: [
        // AllPets libraries
        .target(
            name: "AllPetsCommons",
            dependencies: [
                "AllPetsColors",
                "AllPetsImages",
                "AllPetsFunctionalUtilities",
//                "AllPetsLocalizable"
            ]),
        
        .target(
                name: "AllPetsColors",
                path: "./Sources/AllPetsColors"),
        .target(
            name: "AllPetsImages",
            path: "./Sources/AllPetsImages"),
        .target(
            name: "AllPetsFunctionalUtilities",
            dependencies: ["AllPetsLocalizable"],
            path: "./Sources/AllPetsFunctionalUtilities"),
        .target(
            name: "AllPetsLocalizable",
            path: "./Sources/AllPetsLocalizable"),
        
        // Tests
        .testTarget(
            name: "AllPetsCommonsTests",
            dependencies: ["AllPetsCommons"]),
    ]
)
