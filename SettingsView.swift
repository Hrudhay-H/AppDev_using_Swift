//
//  SettingsView.swift
//  TabularExample
//
//  Created by BATCH01L1 on 18/04/25.
//
import SwiftUI
struct SettingsView: View {
    @State private var showAlert = false
    var body: some View {
        NavigationView {
            VStack{
                List{
                    NavigationLink(destination: ChangePasswordView()) {
                        Text("Change Password")
                    }
                    Text("Sign Out")
                        .onTapGesture {
                            showAlert = true
                        }
                }
            }
            .navigationTitle("Settings")
            .alert("Sign Out", isPresented: $showAlert) {
                Button("No",role: .cancel){}
                Button("Yes",role:.destructive){}
            }message: {
                Text("Do you wish to sign out?")
            }
        }
    }
}
#Preview {
    SettingsView()
}
