//
//  ContentView.swift
//  LivitaTestTask
//
//  Created by Dima on 18.06.2026.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: TabItem = .tools
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Group {
                switch selectedTab {
                case .tools:
                    HomeView()
                case .gallery:
                    GalleryView()
                case .discover:
                    DiscoverView()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            TabBarView(selectedTab: $selectedTab)
                .padding(.bottom, 10)
        }
        .ignoresSafeArea(.keyboard, edges: .bottom)
    }
}

#Preview {
    ContentView()
}
