//
//  ContentView.swift
//  TextExamples
//
//  Created by BATCH01L1 on 05/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment:.center,spacing:20){
            Text("Hello").foregroundStyle(.red).fontWeight(.bold)
            Text("Niggesh").foregroundStyle(.black).font(.largeTitle).fontWeight(.bold)
            Text("I am from the dark side of India i.e, Kerala").fontWeight(.medium)
            VStack(alignment:.center){
                Text("I love Dose, Idli, Sambar and Chutney!").fontWeight(.medium).padding(.top,-20)
            }
        }
    }
}

#Preview {
    ContentView()
}
