//
//  ContentView.swift
//  05-buttons
//
//  Created by Lorenzo Jaime Castro Vazquez1 on 03/01/21.
//  Copyright © 2021 Lorenzo Jaime Castro Vazquez1. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Button(action: {
                // Que debe hacer el botón
                print("Boton Hola pulsado")
            }){
                // Como debe verse el boton
                Text("¡Hola Mundo!!!")
                    // Texto del boton
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    // Interior del boton
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(50)
                    // Borde del botón
                    .padding(12)
                    .overlay(RoundedRectangle(cornerRadius: 50)
                        .stroke(Color.green, lineWidth: 5))
            }
                
                Button(action: {
                    print("Editar")
                }){
                    HStack{
                        Text("Editar")
                            .fontWeight(.bold)
                    }
            }.buttonStyle(BasicButtonStyle())
            Button(action: {
                    print("Eliminar")
                }){
                    HStack{
                        Image(systemName: "trash")
                        Text("Eliminar")
                            .fontWeight(.bold)
                           // .rotationEffect(angle: 90)
                    }
            }.buttonStyle(BasicButtonStyle())
            Button(action: {
                    print("Compartir")
                }){
                    HStack{
                        Image(systemName: "square.and.arrow.up")
                        Text("Compartir")
                            .fontWeight(.bold)
                    }
            }.buttonStyle(BasicButtonStyle())        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BasicButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
        .frame(minWidth: 0, maxWidth: .infinity)
        .padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color("summer 1"), Color.green]), startPoint: .leading, endPoint: .trailing))
        .font(.largeTitle)
        .foregroundColor(.white)
        .cornerRadius(30)
        .shadow(color: .black,radius: 20.0,  x:20, y: 5)
        .padding(.horizontal, 15)
        .scaleEffect(configuration.isPressed ? 0.8: 1.0)
      
    }
}

