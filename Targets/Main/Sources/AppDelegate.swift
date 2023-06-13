import TuistExampleKit
import TuistExampleUI
import SwiftUI

@main
struct AtlasApp: App {
    
    var body: some Scene {
        WindowGroup {
            TuistExampleAssemblie.makeUI(service: TuistExampleKitService())
        }
    }
    
    init() {}
}
