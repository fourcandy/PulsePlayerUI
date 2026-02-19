//
//  ContentView.swift
//  PulsePlayerUI
//
//  Created by Moksh Bisht on 19/02/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                ScrollView {
                    VStack(spacing: 32) {
                        
                        // 1. Featured Section
                        FeaturedCardView()
                            .shadow(color: .black.opacity(0.08), radius: 12, y: 6)
                            .padding(.top, 10)
                        
                        // 2. Recently Played (Horizontal Scroll)
                        VStack(alignment: .leading, spacing: 16) {
                            SectionHeaderView(title: "Recently Played")
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 16) {
                                    ForEach(MockData.recentlyPlayed) { item in
                                        AlbumCardView(item: item, size: 160)
                                    }
                                }
                                .padding(.horizontal, 20)
                            }
                        }
                        
                        // 3. Top Charts (Grid)
                        VStack(alignment: .leading, spacing: 16) {
                            SectionHeaderView(title: "Top Charts")
                            
                            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                                ForEach(MockData.charts) { item in
                                    // Using geometry proxy instead of UIScreen.main to avoid deprecation warnings
                                    let screenWidth = geometry.size.width
                                    let cardWidth = (screenWidth - 60) / 2
                                    AlbumCardView(item: item, size: cardWidth)
                                }
                            }
                            .padding(.horizontal, 20)
                        }
                    }
                    .padding(.bottom, 30)
                }
            }
            .navigationTitle("Home")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {}) {
                        Image(systemName: "person.circle")
                            .symbolRenderingMode(.hierarchical)
                            .font(.title2)
                            .foregroundColor(.red)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
