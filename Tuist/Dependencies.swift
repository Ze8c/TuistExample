import ProjectDescription
import ProjectDescriptionHelpers

let packageManager = SwiftPackageManagerDependencies(dependencies: ExternalDependencie.allCases)

let dependencies = Dependencies(
    swiftPackageManager: packageManager,
    platforms: [.iOS]
)

extension SwiftPackageManagerDependencies {
    init(dependencies: [ExternalDependencie]) {
        self.init(dependencies.map(\.package))
    }
}
