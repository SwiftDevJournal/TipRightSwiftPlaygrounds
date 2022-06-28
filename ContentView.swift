import SwiftUI

struct ContentView: View {
    @State var billAmount: Double = 0
    @State var tipPercentage: Int = 20
    @State var tipAmount: Double = 0
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
    }
}
