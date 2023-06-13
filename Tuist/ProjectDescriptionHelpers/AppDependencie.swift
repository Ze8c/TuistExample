import ProjectDescription

enum AppDependencie {
    case target(AppTarget)
    case external(ExternalDependencie)
}

extension AppDependencie {
    var convert: TargetDependency {
        switch self {
        case let .target(item): return .target(name: item.name)
        case let .external(item): return .external(name: item.name)
        }
    }
}
