//
//  ContentView.swift
//  TestFieldsExamles
//
//  Created by BATCH01L1 on 05/04/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert = false
    @State private var title = ""
    @State private var message = ""
    @State private var name: String = ""
    @State private var passsword: String = ""
    var body: some View {
        VStack(spacing:20) {
            Text("Login").font(.system(size: 50, weight: .bold, design: .rounded)).padding(.bottom, 30).padding(.top,-40)
            TextField("Username", text:$name)
                .textFieldStyle(.roundedBorder)
            SecureField("Password", text:$passsword)
                .textFieldStyle(.roundedBorder)
            Button("Login") {
                if name == "Hrudhay" && passsword == "#hello" {
                    print("Login successful")
                    showAlert = true
                    title = "Successful"
                    message = "Welcome back, Chief!"
                }
                else {
                    print("Incorrect Credentials")
                    showAlert = true
                    title = "Unsuccessful"
                    message = "Incorrect credentials"
                }
            }.buttonStyle(.borderedProminent).fontWeight(.heavy)
                .shadow(radius: 4)

        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text(title), message: Text(message),dismissButton:.cancel())
        }
        .padding(30)
    }
}

#Preview {
    ContentView()
}
