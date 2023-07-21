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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", exact: "1.0.0-beta.20230721115743"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXDataLayer.git", exact: "1.0.0-beta.20230721115743"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXFoundation.git", exact: "1.0.0-beta.20230721115743"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXObjectsModel.git", exact: "1.0.0-beta.20230721115743"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXStandardClasses.git", exact: "1.0.0-beta.20230721115743")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Beacons-1.0.0-beta.20230721115743.xcframework.zip",
			checksum: "57aa0b3524011d0bc7caa50990a388130fd82f63bc81c70224ab3cc425388e1c"
		)
	]
)