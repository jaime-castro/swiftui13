//
//  ContentView.swift
//  10-lists
//
//  Created by Lorenzo Jaime Castro Vazquez1 on 08/01/21.
//  Copyright © 2021 Lorenzo Jaime Castro Vazquez1. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var planes = [
        Plane(name: "Airbus 320", image: "A320"),
        Plane(name: "Airbus 330", image: "A330"),
        Plane(name: "Airbus 340", image: "A340"),
        Plane(name: "Airbus 350", image: "A350"),
        Plane(name: "Airbus 380", image: "A380"),
        Plane(name: "Antonov 225", image: "AN225"),
        Plane(name: "Boeing 727", image: "B727"),
        Plane(name: "Boeing 737", image: "B737"),
        Plane(name: "Boeing 747", image: "B747"),
        Plane(name: "Boeing 757", image: "B757"),
        Plane(name: "Boeing 767", image: "B767"),
        Plane(name: "Boeing 777", image: "B777"),
        Plane(name: "Boeing 787", image: "B787")
    ]
    
    var body: some View {
        
        List(planes) { plane in
            PlaneRow(plane: plane)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Plane: Identifiable {
    var id = UUID()
    var name: String
    var image: String
}

struct PlaneRow: View {
    
    var plane : Plane
    
    var body: some View {
        HStack {
            Image(plane.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 120, height: 60)
                .clipped()
                .cornerRadius(30)
            
            Text(plane.name)
        }
    }
}
