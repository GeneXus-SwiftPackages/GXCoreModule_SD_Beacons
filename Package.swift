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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", branch: "beta"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXDataLayer.git", branch: "beta"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXFoundation.git", branch: "beta"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXObjectsModel.git", branch: "beta"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXStandardClasses.git", branch: "beta")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Beacons-1.0.0-beta+20230418130717.xcframework.zip",
			checksum: "8b1d18e9fe5c6632f99b3d188dc40a12a2d271255589496805500522cb656c05"
		)
	]
)