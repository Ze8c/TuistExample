import ProjectDescription

public enum ExternalDependencie: CaseIterable {
    case kingfisher
}

extension ExternalDependencie {
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
