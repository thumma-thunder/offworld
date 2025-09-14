// swift-tools-version: 6.1
import PackageDescription

let package = Package(
    name: "Offworld",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "StickerAd",
            targets: ["StickerAd"])
    ],
    dependencies: [
        .package(url: "https://github.com/firebase/firebase-ios-sdk.git", from: "10.0.0"),
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.8.0")
    ],
    targets: [
        .target(
            name: "StickerAd",
            dependencies: [
                .product(name: "FirebaseAuth", package: "firebase-ios-sdk"),
                .product(name: "FirebaseFirestore", package: "firebase-ios-sdk"),
                "Alamofire"
            ],
            path: "Sources"
        ),
        .testTarget(
            name: "StickerAdTests",
            dependencies: ["StickerAd"],
            path: "Tests/StickerAdTests"
        )
    ]
)
