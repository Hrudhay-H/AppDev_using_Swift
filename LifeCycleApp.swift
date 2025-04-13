//
//  LifeCycleApp.swift
//  LifeCycle
//
//  Created by BATCH01L1 on 05/04/25.
//

import SwiftUI

@main
struct LifeCycleApp: App {
    @State private var appState = ScenePhase.active
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear() {
                    print("Contentview appeared")
                }
                .onDisappear(){
                    print("contentview dissapered")
                }
        }.onChange(of: appState) {
            newValue in
            switch newValue {
            case .active:
                print("Scene is moving from active to inactive")
            case .inactive:
                print("Scene is moving from inactive to active")
            case .background:
                print("Scene is in the background")
            default:
                break
            }
        }
    }
}
