//
//  ContentView.swift
//  03-stacks
//
//  Created by Lorenzo Jaime Castro Vazquez1 on 01/01/21.
//  Copyright © 2021 Lorenzo Jaime Castro Vazquez1. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            HeaderView()
            BasicoYCarreraView()
            DefinitivoView()
            Spacer()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HeaderView: View {
    var body: some View {
        
        HStack {
            VStack(alignment: .leading, spacing: 4){
                Text("Elige tu itinerario")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
                
                Text("de aprendizaje")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
            }
            Spacer()
        }.padding()
    }
}

struct PricingView: View {
    
    let title: String
    let subTitle: String
    let price: String
    let texColor: Color
    let backgroundColor: Color
    let icon: String?
    
    var body: some View {
        
        VStack{
            
            icon.map({
                Image(systemName: $0) // $0 = icon
                .font(.largeTitle)
                .foregroundColor(.white)
            })
            Text(title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(texColor)
            
            Text(price)
                .font(.system(size: 34, weight: .heavy, design: .rounded))
                .foregroundColor(texColor)
            
            Text(subTitle)
                .font(.headline)
                .foregroundColor(texColor)
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
            .padding(30)
            .background(backgroundColor)
            .cornerRadius(10)
    }
}

struct BasicoYCarreraView: View {
    var body: some View {
        HStack(spacing: 8){
            
            PricingView(title: "Básico", subTitle: "Un curso incluido", price: "9.99€", texColor: .white, backgroundColor: .green,icon: "")
            ZStack{
                PricingView(title: "Carrera", subTitle: "Toda una carrera", price: "29.99€", texColor: .black, backgroundColor: Color(red:230/255, green:230/255, blue:230/255),icon: "")
                
                Text("El mejor para empezar")
                    .font(.system(.caption, design: .rounded))
                    .foregroundColor(.white)
                    .fontWeight(.black)
                    .padding(8)
                    .background(Color(red:240/255, green:180/255, blue:50/255))
                    .offset(x: 0, y: -85)
            }
        }.padding(.horizontal)
    }
}

struct DefinitivoView: View {
    var body: some View {
        ZStack{
            PricingView(title: "Definitivo", subTitle: "Todos los cursos online", price: "99.99€", texColor: .white, backgroundColor: .black, icon: "lightbulb")
                .padding()
            Text("La mejor oferta para un completo aprendizaje")
                .font(.system(.caption, design: .rounded))
                .foregroundColor(.white)
                .fontWeight(.black)
                .padding(8)
                .background(Color(red:240/255, green:180/255, blue:50/255))
                .offset(x: 0, y: -89)
            
            
        }.padding(.vertical)
    
    }
}
