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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", exact: "1.3.0-beta.6")
	],
	targets: [
		.target(name: "GXCoreModule_SD_BeaconsWrapper",
				dependencies: [
					"GXCoreModule_SD_Beacons",
					.product(name: "GXCoreBL", package: "GXCoreBL", condition: .when(platforms: [.iOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_Beacons",
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Beacons-1.3.0-beta.6.xcframework.zip",
			checksum: "245a13244ee93c8a7f7c6f2164837522be6464aac70190e4d9582440a99d303d"
		)
	]
)