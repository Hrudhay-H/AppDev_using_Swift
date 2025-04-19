//
//  ProfileView.swift
//  TabularExample
//
//  Created by BATCH01L1 on 18/04/25.
//

import SwiftUI
struct ProfileView: View {
    var body: some View {
        NavigationView {
            
            VStack(spacing: 30) {
                List{
                    Image("godzilla").resizable()
                        .frame(width:150,height:300)
                        .clipShape(Circle())
                        .shadow(radius: 5)
                        .padding(.leading,90)
                        .padding(.top,-70)
                        .padding(.bottom,-70)
                    Text("Godzilla")
                        .fontWeight(.semibold)
                        .font(.system(size:15))
                    Text("+91 9966442003")
                        .fontWeight(.semibold)
                        .font(.system(size:15))
                    Text("xyz@gmail.com")
                        .fontWeight(.semibold)
                        .font(.system(size:15))
                }
            }
            
            
            .navigationTitle("Profile")
        }
    }
}
#Preview {
    ProfileView()
}
