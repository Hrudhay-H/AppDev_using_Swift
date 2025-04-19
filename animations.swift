//
//  ContentView.swift
//  Animations
//
//  Created by BATCH01L1 on 18/04/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isBig = false
    var body: some View {
        VStack (spacing :50){
            Circle()
                .frame(width: isBig ? 1500 : 500, height: isBig ? 1500 : 500)
                .foregroundColor(.red)
                .animation(.linear(duration: 0.1).repeatForever())
            Button("PEPSI"){
                self.isBig.toggle()
            }.fontWeight(.heavy)
                .fontDesign(.rounded)
                .font(.system(size: 60))
                .foregroundStyle(.black)
            Circle()
                .frame(width: isBig ? 1500 : 500, height: isBig ? 1500 : 500)
                .foregroundColor(.blue)
                .animation(.linear(duration: 0.1).repeatForever())
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
