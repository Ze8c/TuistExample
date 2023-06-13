import Foundation

public enum AppScope: String {
    case root
    case core
    case flow
    
    public var folder: String {
        rawValue.capitalizingFirstLetter
    }
}
