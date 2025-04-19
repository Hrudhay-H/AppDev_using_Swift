//
//  ContentView.swift
//  PickerView
//
//  Created by BATCH01L1 on 18/04/25.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedMonthIndex: Int = 0
    var months = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]
    var body: some View {
        VStack {
            Text("Select Month")
            Picker("",selection: $selectedMonthIndex) {
                ForEach(months.indices,id:\.self) {
                    index in Text(months[index])
                }
            }.pickerStyle(.wheel)
            Text("Selected Month: \(months[selectedMonthIndex])")
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
