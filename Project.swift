import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

let localHelper = LocalHelper(name: "MyPlugin")

let project = Project(
    name: "TuistExample",
    organizationName: AppSetup.appConfig.organizationName,
    options: .options(
        defaultKnownRegions: ["ru", "Base"],
        developmentRegion: "ru",
        textSettings: .textSettings(usesTabs: false, indentWidth: 4, wrapsLines: true)
    ),
    settings: AppSetup.projectSettings,
    targets: AppTarget.allCases.map(\.target),
    resourceSynthesizers: [
        .strings(),
        .assets(),
    ]
)
