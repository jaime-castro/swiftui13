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
        Text("Hola Mundo Nuevo")
            .fontWeight(.bold)
            .font(.system(.largeTitle, design: .serif))
            .foregroundColor(.green)
            .underline(true, color: .red)
            .fontWeight(.bold)
            .italic()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
