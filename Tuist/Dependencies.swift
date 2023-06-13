import ProjectDescription
import ProjectDescriptionHelpers

let packageManager = SwiftPackageManagerDependencies(dependencies: [.kingfisher])

let dependencies = Dependencies(
    swiftPackageManager: packageManager,
    platforms: [.iOS]
)

extension SwiftPackageManagerDependencies {
    init(dependencies: [AppDependencie]) {
        self.init(dependencies.map(\.package))
    }
}
