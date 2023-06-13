import Foundation

public protocol AbsTuistExampleKitService {
    func hello() -> String
}

public final class TuistExampleKitService: AbsTuistExampleKitService {
    public init() {}
    
    public func hello() -> String {
        "Hello, from your Kit framework"
    }
}
