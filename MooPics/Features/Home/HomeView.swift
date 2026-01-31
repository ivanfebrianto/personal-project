//
//  HomeView.swift
//  MooPics
//
//  Created by Ivan F on 30/01/26.
//

import SwiftUI

struct HomeView: View {
    @Environment(\.colorScheme) private var colorScheme
    var heroTestUrl: URL? {
        URL(string: Constants.movieImageURL)
    }
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    // Hero Banner
                    AsyncImage(url: heroTestUrl) { image in
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: .infinity)
                            .overlay {
                                LinearGradient(
                                    gradient: Gradient(stops: [
                                        .init(color: .clear, location: 0.7),
                                        .init(color: colorScheme == .dark ? .black.opacity(1) : .white.opacity(1), location: 1.0)
                                    ]),
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                            }
                    } placeholder: {
                        ProgressView()
                            .frame(height: 300)
                    }
                    // Buttons & Content
                    VStack(spacing:16){
                        HStack(spacing: 10) {
                            HomeButton(titleKey: "playButton_title",iconName: "play.fill") {
                            }
                            HomeButton(titleKey: "download_title", iconName: "arrow.down.circle.fill") {
                            }
                        }

                        ContentRow(titleKey: "top10_movies_title")
                        ContentRow(titleKey: "top10_tv_title")
                        ContentRow(titleKey: "new_release_title")
                        ContentRow(titleKey: "award_winning_title")
                    }
                    .padding(.horizontal)
                }
            }
            .navigationTitle(Text("Wacth Now"))
        }
    }


}

#Preview {
    HomeView()
}
