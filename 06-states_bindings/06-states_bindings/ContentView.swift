//
//  ContentView.swift
//  06-states_bindings
//
//  Created by Lorenzo Jaime Castro Vazquez1 on 04/01/21.
//  Copyright © 2021 Lorenzo Jaime Castro Vazquez1. All rights reserved.
//

import SwiftUI
    
struct ContentView: View {
    
    @State private var isPlaying = true
    
    var body: some View {
        Button(action: {
            // Action
            self.isPlaying.toggle()
        }) {
            // Formato y mas elementos stacks, vistas, imagenes, textos, mas botones, etc
        
            Image(systemName: isPlaying ? "stop.circle.fill" : "play.circle.fill")
                    .font(.system(size:100))
                .foregroundColor(isPlaying ? .red : .blue)
        }
        
    
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
