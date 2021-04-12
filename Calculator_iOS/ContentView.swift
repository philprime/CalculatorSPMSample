//
//  ContentView.swift
//  Calculator_iOS
//
//  Created by Philip Niedertscheider on 12.04.21.
//

import SwiftUI
import CalculatorCore

struct ContentView: View {

    @State var number1 = ""
    @State var op = "+"
    @State var number2 = ""

    var body: some View {
        VStack {
            TextField("Number 1", text: $number1)
                .keyboardType(.numberPad)
                .padding(10)
                .cornerRadius(5)
            Picker("Operator", selection: $op) {
                ForEach(["+", "-", "*", "/"], id: \.self) { op in
                    Text(op)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            TextField("Number 2", text: $number2)
                .keyboardType(.numberPad)
                .padding(10)
                .cornerRadius(5)
            Divider()
            Text("Result: " + result)
                .padding(10)
        }
        .padding(20)
    }

    var result: String {
        return "?"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
