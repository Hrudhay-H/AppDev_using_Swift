//
//  ContentView.swift
//  AlertExample
//
//  Created by BATCH01L1 on 05/04/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert = false
    var body: some View {
        VStack {
            Button("Show Alert") {
                showAlert = true
            }
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Unsuccessful"), message: Text("Incorrect Credentials"),dismissButton:.cancel())
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
