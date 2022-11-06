// swift-tools-version:5.5

import PackageDescription

let package = Package(
    // This name is normally synonymous with a hosted git repo
    name: "customsequences",

    // The executables or libraries produced by this project
    products: [
        // This is the call name of the library that is produced.
        // You don't import that name. You import the names of the
        // module targets included within the library.
        .library(name: "customsequences",

            // The targets named here are the modules listed in the targets section
            targets: ["CustomSequences"]),
    ],

    dependencies: [
    ],

    targets: [
        // Create module targets

        .target(
            // This is the module name. It is used by the product section targets
            // and by any test target
            name: "CustomSequences",
            dependencies: [
            ],
            path: "Sources/" // Omit or override if needed
        ),

        // Test target omitted here
        //.testTarget(name: "CustomSequencesTests", dependencies: ["CustomSequences"]),
    ],

    swiftLanguageVersions: [ .v5 ]
)
