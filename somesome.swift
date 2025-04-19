//
//  ContentView.swift
//  Somesomesome
//
//  Created by BATCH01L1 on 18/04/25.
//

import SwiftUI

struct ContentView: View {
    @State private var fname = ""
    @State private var lname = ""
    @State var showDetails = false
    @State private var date: Date = Date()
    var body: some View {
        VStack {
            TextField("Firstname", text:$fname)
                .textFieldStyle(.roundedBorder)
            TextField("Lastname", text:$lname)
                .textFieldStyle(.roundedBorder)
            DatePicker("Date of Birth", selection: $date,displayedComponents: .date)
                .datePickerStyle(.compact)
            if showDetails == false {
                Button("Show Details") {
                    showDetails.toggle()
                }
            }
            else {
                Button("Hide Details") {
                    showDetails.toggle()
                }
            }
            if showDetails {
                Text("First Name is \(fname)")
                Text("Last Name is \(lname)")
                Text("Date Of Birth: \(date, style:.date)")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
