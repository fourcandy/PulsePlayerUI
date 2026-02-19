//
//  FeaturedCardView.swift
//  PulsePlayerUI
//
//  Created by Moksh Bisht on 20/02/2026.
//


import SwiftUI

struct FeaturedCardView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Featured")
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(.secondary)
                .textCase(.uppercase)
            
            ZStack(alignment: .bottomLeading) {
                RoundedRectangle(cornerRadius: 12)
                    .fill(LinearGradient(colors: [.blue, .purple], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(height: 220)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Made For You")
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                    
                    Text("Personalized mixes based on your history")
                        .font(.subheadline)
                        .foregroundColor(.white.opacity(0.9))
                }
                .padding(20)
            }
        }
        .padding(.horizontal, 20)
    }
}
