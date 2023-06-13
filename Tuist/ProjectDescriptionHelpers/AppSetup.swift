import ProjectDescription

public enum AppSetup {
    public static let appConfig = AppConfig(
        marketingVersion: "1.0.0",
        buildVersion: "1",
        organizationName: "Organization LTD",
        bunldePrefix: "net.project.",
        iosTargetVersion: "15.0"
    )
    
    public static let projectSettings = Settings.settings(
        base: SettingsDictionary()
            .codeSignIdentityAppleDevelopment()
            .bitcodeEnabled(false)
            .appleGenericVersioningSystem()
            .otherLinkerFlags(["-ObjC"])
            .marketingVersion(appConfig.marketingVersion)
            .merging([
                "DEPLOYMENT_POSTPROCESSING": true,
                "STRIP_INSTALLED_PRODUCT": true,
                "STRIPFLAGS": "-rSTx"
            ]),
        debug: Configuration.debug(
            name: .debug,
            settings: SettingsDictionary()
                .otherSwiftFlags("-Xfrontend -warn-long-function-bodies=300 -Xfrontend -warn-long-expression-type-checking=300 -Xfrontend -debug-time-function-bodies")
        ).settings,
        release: Configuration.release(name: .release).settings,
        defaultSettings: DefaultSettings.essential(excluding: [])
    )
}
