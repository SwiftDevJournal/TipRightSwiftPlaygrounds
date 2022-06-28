import SwiftUI

struct ContentView: View {
    @State private var billAmount: Double = 0
    @State private var tipPercentage: Int = 20
    @State private var tipAmount: Double = 0
    
    var body: some View {
        VStack {
            HStack {
                TextField("Bill Amount", value: $billAmount, formatter: NumberFormatter())
            }
            HStack {
                TextField("Tip Percentage", value: $tipPercentage, formatter: NumberFormatter())
                Stepper("Tip Percentage", value: $tipPercentage)
            }
            Text("\(tipAmount)")
            Button("Calculate Tip") {
                
            }
        }
    }
}
