//
//  ContentView.swift
//  tarea-8
//
//  Created by Lorenzo Jaime Castro Vazquez1 on 13/01/21.
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
    
     init() {
           let appearance = UINavigationBarAppearance()
           appearance.largeTitleTextAttributes = [
               .font: UIFont(name: "Times New Roman", size: 32)!,
               .foregroundColor: UIColor.systemIndigo
           ]
           appearance.titleTextAttributes = [
               .font: UIFont(name: "Times New Roman", size: 18)!,
               .foregroundColor: UIColor.systemIndigo
           ]
           appearance.setBackIndicatorImage(
               UIImage(systemName: "arrow.left.circle.fill"), transitionMaskImage: UIImage(systemName: "arrow.left.circle")
           )
           
           UINavigationBar.appearance().tintColor = .systemIndigo
       
           UINavigationBar.appearance().standardAppearance = appearance
           UINavigationBar.appearance().compactAppearance = appearance
           UINavigationBar.appearance().scrollEdgeAppearance = appearance
       }
    
    
    var body: some View {
        NavigationView{
         
            List(planes.indices) { idx in
                NavigationLink(destination:
                DetailView(plane: self.planes[idx])){
                    
                        PlaneRow(plane: self.planes[idx])
                }
                }.navigationBarTitle("Aviones mayor a menor tamaño")
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
    var name:     String
    var image:    String
    var feature : Bool = false
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
