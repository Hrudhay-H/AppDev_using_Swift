//
//  ContentView.swift
//  ImageExample
//
//  Created by BATCH01L1 on 05/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("godzilla").resizable()
                .frame(width:200,height:400)
                .clipShape(Circle())
                .shadow(radius: 5)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
