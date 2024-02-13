//
//  ContentView.swift
//  Nombre mystère en Swift UI
//
//  Created by Manuel Ramanitra on 13/02/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack() {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Bonjour, Master BI&A !")
                Text("Manu RMT")
                Text("2023-2024")
            }
            VStack(alignment: .center) {
                Text("Jeu du Nombre Mystère (encore)")
            }.background(Color(.init(srgbRed: 0.9, green: 0.9, blue: 0.9, alpha: 1)))
             .padding()
            
        }.background(Color.green)
         .ignoresSafeArea(.all)
        
        
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
//        }
//        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
