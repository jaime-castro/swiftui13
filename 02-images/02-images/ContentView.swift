//
//  ContentView.swift
//  02-images
//
//  Created by Lorenzo Jaime Castro Vazquez1 on 29/12/20.
//  Copyright © 2020 Lorenzo Jaime Castro Vazquez1. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Image("Brooklyn-bridge")
        .resizable()
      .edgesIgnoringSafeArea(.vertical)
      //.scaledToFit()
        .aspectRatio(contentMode: .fill)
     // .scaledToFill()
        .frame(width:300)
      //.clipped()
        .clipShape(Capsule())
        .opacity(0.9)
        .overlay(
            /*Image(systemName: "heart.fill")
                .font(.system(size: 60))
                .foregroundColor(.pink)
                .opacity(0.5)*/
            
            /*Text("Que ganas de estar en Brookling, comiendo un delicioso hot dog y admirando el puente de Brookling")
                .fontWeight(.bold)
                .font(.system(.headline,design:.rounded))
                .foregroundColor(.white)
                .padding()
                .background(Color.gray)
                .cornerRadius(10)
                .opacity(0.5)
                .padding(),
            alignment: .center*/
            
            Capsule()
                .foregroundColor(.gray)
                .opacity(0.5)
                .overlay(
                    Text("Puente de Brookling")
                        .fontWeight(.bold)
                        .font(.title)
                        .foregroundColor(.white)
                        .frame(width: 350)
            
                )
            
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
