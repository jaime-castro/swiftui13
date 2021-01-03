//
//  CardView.swift
//  04-ScrollCardView
//
//  Created by Lorenzo Jaime Castro Vazquez1 on 02/01/21.
//  Copyright © 2021 Lorenzo Jaime Castro Vazquez1. All rights reserved.
//

import SwiftUI

struct CardView: View {
    
    let imageName: String
    let authorName: String
    let courseTitle: String
    let originalPrice: String
    let discountPrice: String
    
    var body: some View {
        VStack {
            Image(imageName)
            .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack {
                VStack(alignment: .leading) {
                    Text(authorName)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text(courseTitle)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                    HStack {
                        Text(discountPrice)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        Text(originalPrice)
                        .font(.caption)
                            .foregroundColor(.secondary)
                            .strikethrough()
                    }
                }.layoutPriority(10)
                Spacer()
            }.padding()
        }.cornerRadius(12)
            .overlay(RoundedRectangle(cornerRadius: 12).stroke(Color(red:130/255, green:130/255, blue:130/255, opacity: 0.2), lineWidth: 2))
            .padding([.top, .horizontal])
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(imageName: "swiftUI", authorName: "Juan Gabriel Gomila", courseTitle: "Diseño de apps para ios con Swftui", originalPrice: "199.99€", discountPrice: "10.99€")
    }
}
