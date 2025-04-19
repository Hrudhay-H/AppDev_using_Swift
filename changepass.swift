//
//  ContentView.swift
//  TabularExample
//
//  Created by BATCH01L1 on 18/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
            
        }
    }
}

#Preview {
    ContentView()
}
