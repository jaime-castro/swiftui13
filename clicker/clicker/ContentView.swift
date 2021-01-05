//
//  ContentView.swift
//  clicker
//
//  Created by Lorenzo Jaime Castro Vazquez1 on 04/01/21.
//  Copyright © 2021 Lorenzo Jaime Castro Vazquez1. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
  //  @State private var numero: Int = 0
    
    @State private var numClicks1 = 0
    @State private var numClicks2 = 0
    @State private var numClicks3 = 0

    var body: some View {
        VStack{
            Text("\(numClicks1 + numClicks2 + numClicks3)")
                .font(.system(size: 90, weight: .bold, design: .rounded))
            CounterView(numClicks: $numClicks1, buttonColor: .blue)
            CounterView(numClicks: $numClicks2, buttonColor: .yellow)
            CounterView(numClicks: $numClicks3, buttonColor: .green)
    }
        
    /* Mi código:
         Button(action:{
            self.numero += 1
        }){
            Text("\(numero)")
        }.frame(width: 100, height: 100, alignment: .center)
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Circle())
            .font(.system(size: 50)) */
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CounterView: View {
    
    @Binding var numClicks: Int
    
    var buttonColor: Color
    
    var body: some View {
        
        Button(action:{
            self.numClicks += 1
        }){
            Circle()
                .frame(width: 150, height: 150)
                .foregroundColor(buttonColor)
            .overlay(Text("\(numClicks)"))
                .foregroundColor(.white)
                .font(.system(size: 80, weight: .bold, design:.rounded))
        }
    }
}
