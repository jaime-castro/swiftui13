//
//  DetailView.swift
//  11-navigation
//
//  Created by Lorenzo Jaime Castro Vazquez1 on 12/01/21.
//  Copyright © 2021 Lorenzo Jaime Castro Vazquez1. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    var course: Course
    
    
    var body: some View {
        VStack{
            Image(course.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            Text(course.name)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .multilineTextAlignment(.center)
                .frame(width: 300)
                .lineLimit(3)
                
            Spacer()
            
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(course: Course(name: "Curso de ios 13 con Swift UI", image: "swift"))
    }
}
