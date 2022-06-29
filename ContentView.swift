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
    let tipRange = 0...1000
    
    var body: some View {
        VStack {
            HStack {
                Text("Bill Amount:")
                TextField("Bill Amount", value: $billAmount, formatter: currencyFormatter)
                    .keyboardType(.decimalPad)
            }
            HStack {
                Text("Tip Percentage:")
                TextField("Tip Percentage", value: $tipPercentage, formatter: NumberFormatter())
                    .keyboardType(.decimalPad)
                // Increment or decrement by 5 percent.
                Stepper("Tip Percentage", value: $tipPercentage, in: tipRange, step: 5)
            }
            Text("Tip Amount: \(tipAmount)")
            Button("Calculate Tip") {
                calculateTip()
            }
        }
        .onChange(of: billAmount) { _ in
            calculateTip()
        }
        .onChange(of: tipPercentage) { _ in
            calculateTip()
        }
    }
    
    func calculateTip() {
        let percentage = Double(tipPercentage) / 100.0
        tipAmount = billAmount * percentage
    }
}
