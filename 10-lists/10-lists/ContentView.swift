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
        Plane(name: "Antonov 225     (84 m)",   image: "AN225"),
        Plane(name: "Airbus 380-900  (79.4 m)", image: "A380"),
        Plane(name: "Boeing 747-800  (76.4 m)", image: "B747"),
        Plane(name: "Airbus 340-600  (75.3 m)", image: "A340"),
        Plane(name: "Boeing 777-300  (73.9 m)", image: "B777"),
        Plane(name: "Airbus 350-1000 (73.88 m)",image: "A350"),
        Plane(name: "Boeing 787-10   (68.3 m)", image: "B787"),
        Plane (name: "Airbus 330-300 (63.6 m)", image: "A330"),
        Plane(name: "Boeing 767-400  (61.4 m)", image: "B767"),
        Plane(name: "Boeing 757      (54.5 m)", image: "B757"),
        Plane(name: "Boeing 727      (46.7 m)", image: "B727"),
        Plane(name: "Boeing 737-900  (42.1 m)", image: "B737"),
        Plane(name: "Airbus 320      (37.57 m)",image: "A320")
    ]
    
    var body: some View {
        VStack{
            Text("Lista de aviones del mas grande al mas pequeño")
        List(planes) { plane in
            PlaneRow(plane: plane)
        }
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
