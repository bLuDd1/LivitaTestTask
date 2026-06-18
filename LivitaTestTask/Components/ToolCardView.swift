//
//  ToolCardView.swift
//  LivitaTestTask
//
//  Created by Dima on 18.06.2026.
//

import SwiftUI

struct ToolCardView: View {
    let tool: ToolModel
    var onTap: () -> Void
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            GeometryReader { geo in
                let totalWidth = geo.size.width
                let halfWidth = max(0, (totalWidth - 2) / 2)
                
                HStack(spacing: 2) {
                    Image(tool.beforeImage)
                        .resizable()
                        .scaledToFill()
                        .frame(width: totalWidth, height: 140)
                        .offset(y: -15)
                        .frame(width: halfWidth, alignment: .leading)
                        .clipped()
                    
                    Image(tool.afterImage)
                        .resizable()
                        .scaledToFill()
                        .frame(width: totalWidth, height: 140)
                        .offset(y: -15)
                        .frame(width: halfWidth, alignment: .trailing)
                        .clipped()
                }
            }
            .frame(height: 140)
            .cornerRadius(20)
            .contentShape(RoundedRectangle(cornerRadius: 20))
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .onTapGesture {
                onTap()
            }
            
            HStack(alignment: .bottom, spacing: 12) {
                VStack(alignment: .leading, spacing: 8) {
                    Text(tool.title)
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(.black)
                    
                    Text(tool.subTitle)
                        .font(.system(size: 14, weight: .regular))
                        .lineSpacing(4)
                        .foregroundColor(.gray)
                        .lineLimit(2)
                }
                
                Spacer()
                
                Button(action: onTap) {
                    Image(systemName: "arrow.right")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(.white)
                        .frame(width: 49, height: 32)
                        .background(.black)
                        .cornerRadius(60)
                        .shadow(color: .black.opacity(0.04), radius: 16, x: 5, y: 4)
                }
            }
            .padding(.horizontal, 4)
            .padding(.bottom, 4)
        }
        .padding(12)
        .background(.white)
        .cornerRadius(20)
    }
}

#Preview {
    ZStack {
        Color.blue
        ToolCardView(tool: ToolModel(
            title: "Redesign",
            subTitle: "Refresh your space with a new interior look",
            beforeImage: "redesign_before",
            afterImage: "redesign_after"
        ), onTap: {})
        .padding(.horizontal, 18)
    }
}
