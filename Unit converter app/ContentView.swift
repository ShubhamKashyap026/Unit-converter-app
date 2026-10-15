//
//  ContentView.swift
//  Unit converter app
//
//  Created by Shubham Kashyap on 15/10/26.
//

import SwiftUI

struct ContentView: View {
    // Properties
    let userOptions = ["milliliters", "liters", "cups", "pints", "gallons"]
    @State private var selectedUnitForConvert = "milliliters"
    @State private var selectedUnitToConvert = "milliliters"
    @State private var userinput = 0.0
    
    
    
    var body: some View {
        NavigationStack{
                Form {
                    // Input
                    Section("Input") {
                        TextField("Enter your value", value: $userinput, format: .number)
                        Picker("Input unit", selection: $selectedUnitForConvert) {
                            ForEach(userOptions, id: \.self) { unit in
                                Text("\(unit)")
                            }
                        }
                    }
                    
                    
                    // Output
                    Section("Output") {
                        Picker("Output unit", selection: $selectedUnitToConvert) {
                            ForEach(userOptions, id: \.self) { unit in
                                Text("\(unit)")
                            }
                        }
                        
                        Text("output")
                    }
                    
                }
            
                .navigationTitle("Volume converter")
            
            
        }
    }
}

#Preview {
    ContentView()
}
