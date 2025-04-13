//
//  ContentView.swift
//  PresentationStyle
//
//  Created by BATCH01L1 on 05/04/25.
//

import SwiftUI

struct ContentView: View {
    //@State private var showModal : Bool = false
    var body: some View {
        NavigationStack {
        VStack {
            NavigationLink("Go to Detail Screen") {
                SecondView()
                //            Button("Click Me") {
                //                showModal = true
            }
        }.navigationTitle("SecondScreen")
        //        .sheet(isPresented: $showModal) {
        //            SecondView()
        //        }
        
        //        .fullScreenCover(isPresented: $showModal) {
        //            SecondView()
        //        }
    }
        .padding()
   }
}

#Preview {
    ContentView()
}
