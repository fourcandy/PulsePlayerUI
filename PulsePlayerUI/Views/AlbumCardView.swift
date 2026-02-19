//
//  AlbumCardView.swift
//  PulsePlayerUI
//
//  Created by Moksh Bisht on 20/02/2026.
//


import SwiftUI

struct AlbumCardView: View {
    let item: MusicItem
    let size: CGFloat
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(item.color.gradient)
                    .frame(width: size, height: size)
                
                Image(systemName: item.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: size * 0.4)
                    .foregroundColor(.white.opacity(0.8))
            }
            
            Text(item.title)
                .font(.system(size: 14, weight: .medium))
                .lineLimit(1)
            
            Text(item.subtitle)
                .font(.system(size: 14))
                .foregroundColor(.secondary)
                .lineLimit(1)
        }
        .frame(width: size)
    }
}
