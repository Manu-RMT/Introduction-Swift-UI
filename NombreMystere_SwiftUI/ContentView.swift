//
//  ContentView.swift
//  Nombre mystère en Swift UI
//
//  Created by Manuel Ramanitra on 13/02/2024.
//

import SwiftUI


struct BlueButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .font(.title2)
            .background(Color(red: 0, green: 0, blue: 0.5))
            .foregroundStyle(.white)
            .clipShape(Capsule())
    }
}

struct customViewModifier: ViewModifier {
    var roundedCornes: CGFloat
    var startColor: Color
    var endColor: Color
    var textColor: Color

    func body(content: Content) -> some View {
        content
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [startColor, endColor]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(roundedCornes)
            .padding(3)
            .foregroundColor(textColor)
            .overlay(RoundedRectangle(cornerRadius: roundedCornes)
                        .stroke(LinearGradient(gradient: Gradient(colors: [startColor, endColor]), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2.5))
            .font(.custom("Open Sans", size: 18))

            .shadow(radius: 10)
    }
}
struct ContentView: View {
    @State var nbJoue : String = ""
    @State var nb_tentative : Int = 10
    
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
            .padding(70)
            .shadow(color: .white , radius: 10, x:10, y:10)
            .bold()
            
            VStack {
                
            }   .frame(maxWidth: 9999, maxHeight: 20)
                .background(Color.white)
            
            VStack(alignment: .center) {
                Text("Jeu du Nombre Mystère (encore)")
                    .font(.title2)
                    .bold()
                    .multilineTextAlignment(.center)
                Text("Nombre de tentatives").padding(2)
                
                TextField("Saisissez une valeur", text: $nbJoue)
                    .modifier(customViewModifier(roundedCornes: 6, startColor: .orange, endColor: .purple, textColor: .white))
                
                Button("Jouer") {
                    nb_tentative -= 1
                }.padding(20)
                .buttonStyle(BlueButton())
                .disabled(nb_tentative == 0)
                
                Button("Rejouer") {
                 nb_tentative = 10
                }.buttonStyle(BlueButton())
                    
            }
             .padding(70)
             .frame(maxWidth: 9999, maxHeight: 9999, alignment: .top)
             .background(.orange)
            
            Text("\(nbJoue)")
            
            
        }
         .ignoresSafeArea(.all)
         .frame(maxWidth: 9999, maxHeight: 9999, alignment: .top)
         .background(Color.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
