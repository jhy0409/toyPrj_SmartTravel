import ProjectDescription

let project = Project(
    name: "SmartTravel",
    targets: [
        .target(
            name: "SmartTravel",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.SmartTravel",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                ]
            ),
            sources: ["SmartTravel/Sources/**"],
            resources: ["SmartTravel/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "SmartTravelTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.SmartTravelTests",
            infoPlist: .default,
            sources: ["SmartTravel/Tests/**"],
            resources: [],
            dependencies: [.target(name: "SmartTravel")]
        ),
    ]
)
