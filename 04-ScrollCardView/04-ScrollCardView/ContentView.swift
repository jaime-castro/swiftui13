//
//  ContentView.swift
//  04-ScrollCardView
//
//  Created by Lorenzo Jaime Castro Vazquez1 on 02/01/21.
//  Copyright © 2021 Lorenzo Jaime Castro Vazquez1. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            
            EncabezadoView()
            
            VStack(alignment: .leading){
                Text("Primeros cursos")
                    .fontWeight(.bold)
                    .padding()
                    ScrollView(.horizontal, showsIndicators: false) {
                    PrimerosCursosView()
                }
            }
            
            VStack(alignment: .leading){
                Text("Otros cursos")
                    .fontWeight(.bold)
                    .padding()
                    ScrollView(.horizontal,showsIndicators: false) {
                    OtrosCursosView()
                }
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct EncabezadoView: View {
    var body: some View {
        VStack{
            Image("udemy_logo_10")
                .resizable()
                .aspectRatio(contentMode: .fit)
                
                .frame(height: 150)
            Text("Juan Gabriel Gomila")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.primary)
            Text("Profesor universitario, UCI y CEO de Frogames")
                .fontWeight(.light)
                .foregroundColor(.secondary)
            Text("139,245 estudiantes · 59 cursos · 25,535 reseñas")
                .font(.system(.footnote, design: .rounded))
                .fontWeight(.black)
                .foregroundColor(.secondary)
        }.padding(.horizontal)
    }
}

struct PrimerosCursosView: View {
    var body: some View {
        
            HStack {
                
                CardView(imageName: "swiftUI", authorName: "Juan Gabriel Gomila", courseTitle: "Diseño de apps para ios con Swftui", originalPrice: "199.99€", discountPrice: "10.99€")
                    .frame(width:  300)
                
                CardView(imageName: "videogames", authorName: "Juan Gabriel Gomila", courseTitle: "Curso completo de videojuegos con Unity 2019", originalPrice: "199.99€", discountPrice: "11.99€")
                    .frame(width:  300)
                
                CardView(imageName: "maths", authorName: "Ricardo Alberich, Juan Gabriel Gomila y Arnaud Mir", courseTitle: "Curso de probabilidad y variables aleatorias para Machine Learning", originalPrice: "199.99€", discountPrice: "12.99€")
                    .frame(width:  300)
                
                CardView(imageName: "python", authorName: "Juan Gabriel Gomila y Llorenz Valverde", courseTitle: "Resuelve problemas de matemáticas con Sage y Pyhon", originalPrice: "99.99€", discountPrice: "10.99€")
                    .frame(width:  300)
            }
        
    }
}

struct OtrosCursosView: View {
    var body: some View {
        
            HStack {
                
                CardView(imageName: "swiftUI", authorName: "Juan Gabriel Gomila", courseTitle: "Diseño de apps para ios con Swftui", originalPrice: "199.99€", discountPrice: "10.99€")
                    .frame(width:  300)
                
                CardView(imageName: "videogames", authorName: "Juan Gabriel Gomila", courseTitle: "Curso completo de videojuegos con Unity 2019", originalPrice: "199.99€", discountPrice: "11.99€")
                    .frame(width:  300)
                
                CardView(imageName: "maths", authorName: "Ricardo Alberich, Juan Gabriel Gomila y Arnaud Mir", courseTitle: "Curso de probabilidad y variables aleatorias para Machine Learning", originalPrice: "199.99€", discountPrice: "12.99€")
                    .frame(width:  300)
                
                CardView(imageName: "python", authorName: "Juan Gabriel Gomila y Llorenz Valverde", courseTitle: "Resuelve problemas de matemáticas con Sage y Pyhon", originalPrice: "99.99€", discountPrice: "10.99€")
                    .frame(width:  300)
            }
        }
    
}
