//
//  ContentView.swift
//  SliderExample
//
//  Created by BATCH01L1 on 18/04/25.
//

import SwiftUI

struct ContentView: View {
    @State private var Volume: Float = 0.0
    @State private var progress: Double = 0
    var body: some View {
        VStack {
            Slider(value: $Volume,in:0...100,step:1)
            Text("Volume: \(Volume)")
            Slider(value: $progress, in:0...100,step:1)
            Text("Progress: \(progress)")
            Text("Nigga")
                .fontWeight(.heavy)
                .opacity(Double(Volume)/100)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
