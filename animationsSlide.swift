//
//  ContentView.swift
//  AnimationWithSlideExample
//
//  Created by BATCH01L1 on 18/04/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showAnimation = false
    var body: some View {
        VStack {
            Text("Heyy!")
                .offset(y: showAnimation ? 0 : 500)
                .animation(.bouncy(duration: 2).repeatForever(),value: showAnimation)
            Text("Nigga!")
                .offset(y: showAnimation ? 0 : -500)
                .animation(.bouncy(duration: 2).repeatForever(),value: showAnimation)
            Text("Byee!")
                .offset(y: showAnimation ? 100 : 500)
                .animation(.bouncy(duration: 2).repeatForever(),value: showAnimation)
            Text("Nigga!")
                .offset(y: showAnimation ? 100 : -500)
                .animation(.bouncy(duration: 2).repeatForever(),value: showAnimation)
            Button("Show Animation") {
                self.showAnimation.toggle()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
