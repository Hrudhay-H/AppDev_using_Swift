//
//  ContentView.swift
//  ButtonExample
//
//  Created by BATCH01L1 on 05/04/25.
//

import SwiftUI
struct ContentView: View {
    @State private var showText: Bool = false
    var body: some View {
        VStack {
            Button("Login") {
                print("Button tapped")
            }.buttonStyle(.borderedProminent).fontWeight(.heavy)
                .shadow(radius: 4)
        }
        Button{
            showText.toggle()
        }label: {
            Text("Sign Up").font(.headline)
        }
        if showText {
            Text("Button pressed")
        }
    }
}
#Preview {
    ContentView()
}
