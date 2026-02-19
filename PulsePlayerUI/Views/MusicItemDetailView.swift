//
//  MusicItemDetailView.swift
//  PulsePlayerUI
//
//  Created by Moksh Bisht on 20/02/2026.
//

import SwiftUI

struct MusicItemDetailView: View {
    let item: MusicItem
    
    var body: some View {
        VStack {
            
            RoundedRectangle(cornerRadius: 20)
                .fill(item.color.gradient)
                .frame(width: 250, height: 250)
                .overlay(
                    Image(systemName: item.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100)
                        .foregroundStyle(.white.opacity(0.8))
                )
            
            Text(item.title)
                .font(.title)
                .fontWeight(.bold)
            
            Text(item.subtitle)
                .foregroundStyle(.secondary)
        }
        .navigationTitle(item.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

