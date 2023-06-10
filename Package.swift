// swift-tools-version: 5.7
import PackageDescription

let package = Package(
	name: "GXCoreModule_SD_Beacons",
	platforms: [.iOS("12.0")],
	products: [
		.library(
			name: "GXCoreModule_SD_Beacons",
			targets: ["GXCoreModule_SD_BeaconsWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", revision: "e4bf5f323ad1a868f5204b2c6f2b23df0307d483"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXDataLayer.git", revision: "f4a22c776ac2bbff5a5c41117572cf5cb809324e"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXFoundation.git", revision: "f0c69c8ba0244d9f0b9fd6192dcec332d743de93"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXObjectsModel.git", revision: "00ba5570aa6cf8e6a7b4973bddfbb9b46ed54921"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXStandardClasses.git", revision: "fc34bf3c60650289f893206e9209c25b6978bba9")
	],
	targets: [
		.target(name: "GXCoreModule_SD_BeaconsWrapper",
				dependencies: [
					"GXCoreModule_SD_Beacons",
					.product(name: "GXCoreBL", package: "GXCoreBL", condition: .when(platforms: [.iOS])),
					.product(name: "GXDataLayer", package: "GXDataLayer", condition: .when(platforms: [.iOS])),
					.product(name: "GXFoundation", package: "GXFoundation", condition: .when(platforms: [.iOS])),
					.product(name: "GXObjectsModel", package: "GXObjectsModel", condition: .when(platforms: [.iOS])),
					.product(name: "GXStandardClasses", package: "GXStandardClasses", condition: .when(platforms: [.iOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_Beacons",
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Beacons-1.0.0-beta+20230610052334.xcframework.zip",
			checksum: "bb3391e1829a2feeb2562d4dcd6b3e7fb182254186933c736417a2d98dcc8c2a"
		)
	]
)