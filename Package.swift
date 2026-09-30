// swift-tools-version: 6.0

import Foundation
import PackageDescription

let package = Package(
    name: "swift-midi-sync",
    platforms: [
        .macOS(.v10_13),
        .iOS(.v12),
        .tvOS(.v12),
        .watchOS(.v4)
    ],
    products: [
        .library(
            name: "SwiftMIDISync",
            targets: ["SwiftMIDISync"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/orchetect/swift-midi-core", from: "1.0.0"),
        .package(url: "https://github.com/orchetect/swift-timecode", from: "3.1.3"),
        .package(url: "https://github.com/orchetect/swift-testing-extensions", from: "0.3.1")
    ],
    targets: [
        .target(
            name: "SwiftMIDISync",
            dependencies: [
                .product(name: "SwiftMIDICore", package: "swift-midi-core"),
                .product(name: "SwiftMIDIInternals", package: "swift-midi-core"),
                .product(name: "SwiftTimecodeCore", package: "swift-timecode")
            ],
            exclude: ["MTC/README.md"],
            swiftSettings: [.define("DEBUG", .when(configuration: .debug))]
        ),
        .testTarget(
            name: "SwiftMIDISyncTests",
            dependencies: [
                "SwiftMIDISync",
                .product(name: "TestingExtensions", package: "swift-testing-extensions")
            ]
        )
    ]
)

// MARK: - Utilities

func hasEnvironmentVariable(_ name: String) -> Bool {
    ProcessInfo.processInfo.environment[name] != nil
}

// MARK: - CI Pipeline

if hasEnvironmentVariable("GITHUB_ACTIONS") {
    for target in package.targets.filter(\.isTest) {
        if target.swiftSettings == nil { target.swiftSettings = [] }
        target.swiftSettings? += [.define("GITHUB_ACTIONS", .when(configuration: .debug))]
    }
}
