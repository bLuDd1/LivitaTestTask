//
//  ImageSliderView.swift
//  LivitaTestTask
//
//  Created by Dima on 18.06.2026.
//

import SwiftUI

struct ImageSliderView: View {
    let beforeImage: String
    let afterImage: String
    
    @State private var sliderOffset: CGFloat = 0.5
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            ZStack(alignment: .leading) {
                Image(beforeImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: width, height: height)
                    .clipped()
                
                Image(afterImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: width, height: height)
                    .clipped()
                    .mask(
                        HStack(spacing: 0) {
                            Rectangle()
                                .frame(width: width * sliderOffset)
                            Spacer(minLength: 0)
                        }
                    )
                    .overlay(
                        Text("After")
                            .modifier(LabelModifier()),
                        alignment: .topTrailing
                    )
                    .overlay(
                        Text("Before")
                            .modifier(LabelModifier()),
                        alignment: .topLeading
                    )
                
                Rectangle()
                    .fill(Color.white)
                    .frame(width: 4)
                    .offset(x: width * sliderOffset - 1)
                    .overlay(
                        Circle()
                            .fill(Color.white)
                            .frame(width: 44, height: 44)
                            .shadow(color: .black.opacity(0.25), radius: 4, x: 0, y: 4)
                            .overlay(
                                HStack(spacing: -2) {
                                    Image(systemName: "chevron.left")
                                    Image(systemName: "chevron.right")
                                }
                                    .font(.system(size: 15, weight: .semibold))
                                    .foregroundColor(.black)
                            )
                            .offset(x: width * sliderOffset - 1)
                            .gesture(
                                DragGesture()
                                    .onChanged { gesture in
                                        let newValue = gesture.location.x / width
                                        sliderOffset = min(max(newValue, 0.0), 1.0)
                                    }
                            ),
                        alignment: .center
                    )
            }
        }
        .frame(height: UIScreen.main.bounds.height * 0.54)
        .cornerRadius(24)
    }
}
