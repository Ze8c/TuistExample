import ProjectDescription

enum Depend {
    case target(AppTarget)
    case external(AppDependencie)
}

extension Depend {
    var convert: TargetDependency {
        switch self {
        case let .target(item): return .target(name: item.name)
        case let .external(item): return .external(name: item.name)
        }
    }
}

public enum AppDependencie {
    case kingfisher
}

extension AppDependencie {
    public var package: Package {
        switch self {
        case .kingfisher:
            return .remote(
                url: "https://github.com/onevcat/Kingfisher.git",
                requirement: .exact("7.6.2")
            )
        }
    }
    
    var name: String {
        switch self {
        case .kingfisher: return "Kingfisher"
        }
    }
}
