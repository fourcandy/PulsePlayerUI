//
//  SectionHeader.swift
//  PulsePlayerUI
//
//  Created by Moksh Bisht on 19/02/2026.
//

import SwiftUI

struct SectionHeaderView: View {
    let title: String
    
    var body: some View {
        Button(action: {
            // Future action: Navigate to a list view
        }) {
            HStack(spacing: 4) {
                Text(title)
                    .font(.title2)
                    .bold()
                    .foregroundColor(.primary)
                
                Image(systemName: "chevron.right")
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.secondary)
                
                Spacer()
            }
        }
        .padding(.horizontal, 20)
        .buttonStyle(.plain) // Ensures the button doesn't highlight the whole row like a standard button
    }
}
