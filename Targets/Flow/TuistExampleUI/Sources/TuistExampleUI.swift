import SwiftUI

struct TuistExampleUI: View {
    
    @StateObject private var vm: TuistExampleVM
    
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            Text(vm.txt)
                .font(.largeTitle)
                .foregroundColor(.black)
        }
        .onAppear(perform: vm.hello)
    }
    
    init(vm: TuistExampleVM) {
        self._vm = StateObject(wrappedValue: vm)
    }
}
