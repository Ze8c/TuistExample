import Combine
import TuistExampleKit

final class TuistExampleVM: ObservableObject {
    @Published var txt: String = ""
    
    private let service: AbsTuistExampleKitService
    
    init(service: AbsTuistExampleKitService) {
        self.service = service
    }
    
    func hello() {
        txt = "Hello, from your UI framework\n" + service.hello()
    }
}
