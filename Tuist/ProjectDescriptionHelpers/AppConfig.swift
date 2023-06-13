import ProjectDescription

public struct AppConfig {
    public let marketingVersion: String
    public let buildVersion: InfoPlist.Value
    public let organizationName: String
    public let bunldePrefix: String
    public let iosTargetVersion: String
    
    public init(
        marketingVersion: String,
        buildVersion: InfoPlist.Value,
        organizationName: String,
        bunldePrefix: String,
        iosTargetVersion: String
    ) {
        self.marketingVersion = marketingVersion
        self.buildVersion = buildVersion
        self.organizationName = organizationName
        self.bunldePrefix = bunldePrefix
        self.iosTargetVersion = iosTargetVersion
    }
}
