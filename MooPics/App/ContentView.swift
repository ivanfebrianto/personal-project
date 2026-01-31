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
                    Image(systemName: "house")
                    Text("Home")
                }
            UpcomingView()
                .tabItem {
                    Image(systemName: "clock")
                    Text("Upcoming")
                }
            SearchMovieView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            DownloadView()
                .tabItem {
                    Image(systemName: "arrow.down.circle")
                    Text("Download")
                }
        }
    }
}


#Preview {
    ContentView()
}
