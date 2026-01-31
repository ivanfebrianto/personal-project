//
//  ContentCardView.swift
//  MooPics
//
//  Created by Ivan F on 31/01/26.
//

import SwiftUI

struct ContentCardView: View {
    var contentTitles: [String] = [
        Constants.movieImageURL,
        Constants.movieImageURL2,
        Constants.movieImageURL3,
        Constants.movieImageURL4,
        Constants.movieImageURL5,
        Constants.movieImageURL6,
        Constants.movieImageURL7,
        Constants.movieImageURL8,
        Constants.movieImageURL9,
    ]
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.gray.opacity(0.3))
                .frame(width: 120, height: 180)
            
            if let randomString = contentTitles.randomElement(),
               let url = URL(string: randomString) {
                AsyncImage(url: url) { image in
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 120, height: 180)
                        .clipped()
                        .cornerRadius(12)
                } placeholder: {
                    ProgressView()
                        .frame(width: 120, height: 180)
                }
            }
        }
        
        }
}

#Preview {
    ContentCardView()
}
