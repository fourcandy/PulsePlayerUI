//
//  AppleMusicTabView.swift
//  PulsePlayerUI
//
//  Created by Moksh Bisht on 20/02/2026.
//


import SwiftUI

struct AppleMusicTabView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Listen Now", systemImage: "play.circle.fill")
                }
            
            Text("Browse")
                .tabItem {
                    Label("Browse", systemImage: "grid")
                }
            
            Text("Radio")
                .tabItem {
                    Label("Radio", systemImage: "dot.radiowaves.left.and.right")
                }
            
            Text("Library")
                .tabItem {
                    Label("Library", systemImage: "music.note.list")
                }
            
            Text("Search")
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
        }
        .accentColor(.red)
    }
}

#Preview {
    AppleMusicTabView()
}