import SwiftUI
import TuistExampleKit

public struct TuistExampleAssemblie {
    public static func makeUI(service: AbsTuistExampleKitService) -> some View {
        TuistExampleUI(vm: TuistExampleVM(service: service))
    }
}
