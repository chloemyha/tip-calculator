//
//  ContentView.swift
//  tip-calculator
//
//  Created by Chloe Huynh on 11/22/22.
//

import SwiftUI

struct ContentView: View {
    @State var total = "100"
    @State var tipPercent = 15.0
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "dollarsign.circle.fill")
                
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                    .font(.title)
                Text("Tip Calculator")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
            }
            HStack{
                Text("$")
                TextField("Amount", text:$total)
            }
            HStack{
                Slider(value: $tipPercent, in: 1...30, step: 1.0)
                Text("\(Int(tipPercent))")
                Text("%")
                
            }
            if let totalNumber = Double(total){
                Text("Tip Amount: $\(totalNumber * tipPercent / 100, specifier: "%0.2f")")
            } else {
                Text("Please enter a numeric number")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
