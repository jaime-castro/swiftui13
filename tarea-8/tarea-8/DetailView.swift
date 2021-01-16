//
//  DetailView.swift
//  tarea-8
//
//  Created by Lorenzo Jaime Castro Vazquez1 on 14/01/21.
//  Copyright © 2021 Lorenzo Jaime Castro Vazquez1. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    var plane : Plane
    
    var body: some View {
        VStack{
            Image(plane.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 360, height: 360)
                
            Text(plane.name)
            .fontWeight(.black)
            .multilineTextAlignment(.center)
            .frame(width: 300)
            .lineLimit(2)
            
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(plane: Plane(name: "Antonov 225     (84 m)", image: "AN225"))
    }
}
