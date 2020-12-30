//
//  ContentView.swift
//  01-first_app
//
//  Created by Lorenzo Jaime Castro Vazquez1 on 28/12/20.
//  Copyright © 2020 Lorenzo Jaime Castro Vazquez1. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años.")
            .fontWeight(.bold)
            .font(.custom("Palatino", size: 25))
            .foregroundColor(.blue)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
            .lineLimit(nil)
            .truncationMode(.middle)
            .lineSpacing(8)
            .padding()
        //  .rotationEffect(.degrees(15), anchor: UnitPoint(x: 0, y: 0))
            .rotation3DEffect(.degrees(50), axis: (x: 1, y: 0, z: 0))
            .shadow(color: .gray, radius: 1, x: 5, y: 5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
