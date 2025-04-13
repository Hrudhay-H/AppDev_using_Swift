//
//  ContentView.swift
//  ListExample
//
//  Created by BATCH01L1 on 05/04/25.
//

import SwiftUI

struct ContentView: View {
    let names = ["Alice", "Bob", "Charlie"]
    @State var sts = ""
    @State var showModal = false
    var body: some View {
        VStack {
            Text("Contacts").fontWeight(.bold).padding(.top,15).font(.system(size: 30))
            List(names,id: \.self) {
                name in Button(name) {
                    showModal = true
                    sts = name
                }
            }
            .sheet(isPresented: $showModal) {
                Sec(st:sts)
            }
        }
    }
}

#Preview {
    ContentView()
}
