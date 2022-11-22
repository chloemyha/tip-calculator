//
//  ContentView.swift
//  tip-calculator
//
//  Created by Chloe Huynh on 11/22/22.
//

import SwiftUI

struct ContentView: View {
    @State var total = ""
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
                Slider(value: $tipPercent)
                Text("\(Int(tipPercent))")
                Text("%")
                
            }
            Text("Tip Amount: $")
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
