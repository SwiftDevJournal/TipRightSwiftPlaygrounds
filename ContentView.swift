import SwiftUI

struct ContentView: View {
    @State private var billAmount: Double = 0
    @State private var tipPercentage: Int = 20
    @State private var tipAmount: Double = 0
    
    let currencyFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }()
    
    var body: some View {
        VStack {
            HStack {
                Text("Bill Amount:")
                TextField("Bill Amount", value: $billAmount, formatter: currencyFormatter)
            }
            HStack {
                Text("Tip Percentage:")
                TextField("Tip Percentage", value: $tipPercentage, formatter: NumberFormatter())
                Stepper("Tip Percentage", value: $tipPercentage)
            }
            Text("Tip Amount: \(tipAmount)")
            Button("Calculate Tip") {
                calculateTip()
            }
        }
    }
    
    func calculateTip() {
        let percentage = Double(tipPercentage) / 100.0
        tipAmount = billAmount * percentage
    }
}
