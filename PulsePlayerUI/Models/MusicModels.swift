//
//  MusicModels.swift
//  PulsePlayerUI
//
//  Created by Moksh Bisht on 19/02/2026.
//

import SwiftUI

// MARK: - Models
struct MusicItem: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let subtitle: String
    let imageName: String
    let color: Color
}

// MARK: - Mock Data
struct MockData {
    static let recentlyPlayed = [
        MusicItem(title: "Midnights", subtitle: "Taylor Swift", imageName: "music.note", color: .purple),
        MusicItem(title: "SOS", subtitle: "SZA", imageName: "music.mic", color: .blue),
        MusicItem(title: "Starboy", subtitle: "The Weeknd", imageName: "play.circle", color: .red),
        MusicItem(title: "Renaissance", subtitle: "Beyoncé", imageName: "record.circle", color: .yellow)
    ]
    
    static let charts = [
        MusicItem(title: "Top 100: Global", subtitle: "Daily Update", imageName: "chart.bar.fill", color: .orange),
        MusicItem(title: "Top 100: USA", subtitle: "Daily Update", imageName: "chart.line.uptrend.xyaxis", color: .green),
        MusicItem(title: "Viral 50", subtitle: "Trending Now", imageName: "bolt.fill", color: .pink),
        MusicItem(title: "New Music", subtitle: "Friday Release", imageName: "sparkles", color: .cyan)
    ]
}
