//
//  ContentView.swift
//  ListExamples2
//
//  Created by BATCH01L1 on 05/04/25.
//

import SwiftUI

struct contacts: Identifiable {
    var id: Int
    var name: String
    var mobile: String
    var img: String
}

struct ContentView: View {
    let someNames: [contacts] = [contacts(id: 1, name:"Godzilla",mobile:"+91 9900662002",img:"reachgodzilla@gmail.com"),contacts(id: 2, name:"KingKong",mobile:"+91 9966001420",img:"reachkong@gmail.com"),contacts(id: 3, name:"Yeti",mobile:"+91 6600341420",img:"reachyeti@gmail.com")]
    var body: some View {
        Text("Contacts").font(.system(size: 30)).fontWeight(.bold).padding(5)
        VStack {
            List (someNames){ contactobj in
                HStack{
                    Image("godzilla")
                        .resizable()
                        .frame(width:50,height:50)
                        .clipShape(.circle)
                        .shadow(radius: 5)
                    VStack(alignment:.leading){
                        Text(contactobj.name).font(.system(size: 20)).fontWeight(.bold)
                        Text(contactobj.mobile).fontWeight(.medium)
                    }.padding(8)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
