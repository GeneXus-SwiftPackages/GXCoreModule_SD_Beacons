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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", revision: "63d2b45412060c871123a524ac6d9239b205962f"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXDataLayer.git", revision: "2b1420b000073afd1f12b87c84c79b5661c4cc0b"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXFoundation.git", revision: "195f2873dc3ed7d924d9a72b86f629015eadef71"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXObjectsModel.git", revision: "2850c07662d2291aeb37634ebb5c498d5ad0d6a4"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXStandardClasses.git", revision: "4ca72491fdc6a8fd7fdab99ed70e324d3a206d3f")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Beacons-1.0.0-beta+20230609175617.xcframework.zip",
			checksum: "1f4ab33d72801b5d2e7d1f744b444adc37cb5aba8fe72b7f27493662a35149d8"
		)
	]
)