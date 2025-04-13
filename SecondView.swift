//
//  SecondView.swift
//  PresentationStyle
//
//  Created by BATCH01L1 on 05/04/25.
//

import SwiftUI
struct SecondView: View {
    @Environment(\.dismiss) var dismiss
    let text = ""
    var body: some View {
        VStack {
            Text("Second View")
            //        Button("Go Back") {
            //            dismiss()
            //        }
        }.navigationTitle("Home")
    }
}
