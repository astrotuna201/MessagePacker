// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "MessagePacker",
    platforms: [
       .macOS(.v10_14)
    ],
    products: [
        .library(name: "MessagePacker", targets: ["MessagePacker"]),
    ],
    targets: [
        .target(name: "MessagePacker", 
        	dependencies: [], 
        	path: "Sources",
        	swiftSettings: [
        		.unsafeFlags(["-disable-astscope-lookup"]) // Compilation bug in 5.2 snapshot
        	]
        ),
        .testTarget(name: "MessagePackerTests", dependencies: ["MessagePacker"]),
    ],
    swiftLanguageVersions: [.version("5")]
)
