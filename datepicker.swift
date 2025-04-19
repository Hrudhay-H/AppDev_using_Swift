//
//  ContentView.swift
//  DatePicker
//
//  Created by BATCH01L1 on 18/04/25.
//

import SwiftUI

struct ContentView: View {
    @State private var date: Date = Date()
    var body: some View {
        VStack(spacing:30){
            DatePicker("", selection: $date)
                .datePickerStyle(.graphical)
            Text("Selected Date: \(date, style:.date)")
            Text("Selected Time: \(date,style: .time)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
