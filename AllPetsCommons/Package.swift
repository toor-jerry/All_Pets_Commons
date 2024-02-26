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
                 targets: ["AllPetsLocalizable"]),
        .library(name: "AllPetsNetworkProvider",
                 targets: ["AllPetsNetworkProvider"])
    ],
    dependencies: [
        // Firebase
        .package(url: "https://github.com/firebase/firebase-ios-sdk.git", .branchItem("main")),
    ],
    targets: [
        // AllPets libraries
        .target(
            name: "AllPetsCommons",
            dependencies: [
                "AllPetsColors",
                "AllPetsImages",
                "AllPetsFunctionalUtilities"
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
        .target(
            name: "AllPetsNetworkProvider",
            dependencies: [
                // Firebase libraries
                .product(name: "FirebaseAuth", package: "firebase-ios-sdk"),
                .product(name: "FirebaseFirestore", package: "firebase-ios-sdk"),
                .product(name: "FirebaseFirestoreSwift", package: "firebase-ios-sdk"),
                .product(name: "FirebaseStorage", package: "firebase-ios-sdk")
            ],
            path: "./Sources/AllPetsNetworkProvider"),
        
        // Tests
        .testTarget(
            name: "AllPetsCommonsTests",
            dependencies: ["AllPetsCommons"]),
    ]
)
