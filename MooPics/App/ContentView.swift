//
//  ContentView.swift
//  MooPics
//
//  Created by Ivan F on 30/01/26.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: Constants.homeIconString)
                    Text("home_title")
                }
            UpcomingView()
                .tabItem {
                    Image(systemName: Constants.upcomingIconString)
                    Text("upcoming_title")
                }
            SearchMovieView()
                .tabItem {
                    Image(systemName: Constants.searchMovieIconString)
                    Text("searchMovie_title")
                }
            DownloadView()
                .tabItem {
                    Image(systemName: Constants.downloadIconString)
                    Text("download_title")
                }
        }
    }
}
 

#Preview {
    ContentView()
}
