//
//  ContentView.swift
//  better_rest2
//
//  Created by Charles Michael on 1/2/25.
//

import SwiftUI

struct ContentView: View {
    
    

    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date.now
   
    var body: some View {
        VStack {
            Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
            
            DatePicker("Please enter a date", selection: $wakeUp, displayedComponents: .hourAndMinute)
                .labelsHidden()
            
            
        }
        .padding()
    }
}



#Preview {
    ContentView()
}
