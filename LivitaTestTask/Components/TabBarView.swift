//
//  TabBarView.swift
//  LivitaTestTask
//
//  Created by Dima on 18.06.2026.
//

import SwiftUI

struct TabBarView: View {
    @Binding var selectedTab: TabItem
    
    var body: some View {
        HStack {
            ForEach([TabItem.tools, TabItem.gallery, TabItem.discover], id: \.self) { tab in
                Spacer()
                Button(action: { selectedTab = tab }) {
                    VStack(spacing: 4) {
                        Image(systemName: tab.icon)
                            .font(.system(size: 22, weight: .medium))
                        Text(tab.rawValue)
                            .font(.system(size: 12, weight: .regular))
                    }
                    .foregroundColor(selectedTab == tab ? .black : .gray.opacity(0.8))
                }
                Spacer()
            }
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 12)
        .background(Color.white)
        .cornerRadius(96)
        .shadow(color: .black.opacity(0.04), radius: 8, x: 2, y: 2)
        .padding(.horizontal, 16)
    }
}

#Preview {
    TabBarView(selectedTab: .constant(TabItem.tools))
}
