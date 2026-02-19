//
//  AppleMusicTabView.swift
//  PulsePlayerUI
//
//  Created by Moksh Bisht on 20/02/2026.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "play.circle.fill")
                }
            
            Text("New")
                .tabItem {
                    Label("New", systemImage: "square.grid.2x2")
                }
            
            Text("Radio")
                .tabItem {
                    Label("Radio", systemImage: "dot.radiowaves.left.and.right")
                }
            
            Text("Library")
                .tabItem {
                    Label("Library", systemImage: "music.note.square.stack")
                }
            
            Text("Search")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
        }
        .accentColor(.red)
    }
}

#Preview {
    ContentView()
}
