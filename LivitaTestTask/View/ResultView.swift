//
//  ResultView.swift
//  LivitaTestTask
//
//  Created by Dima on 18.06.2026.
//

import SwiftUI

struct ResultView: View {
    let tool: ToolModel
    @Environment(\.dismiss) private var dismiss
    @Bindable var viewModel: HomeViewModel
    
    var body: some View {
        VStack(spacing: 20) {
            ImageSliderView(beforeImage: tool.beforeImage, afterImage: tool.afterImage)
                .padding(.horizontal, 16)
                .padding(.top, 50)
            
            Spacer()
            
            VStack(spacing: 16) {
                HStack(spacing: 8) {
                    ResultButton(icon: "arrow.up.and.down.and.sparkles", text: "Resize") {
                        viewModel.resizeButtonTapped()
                    }
                    
                    ResultButton(icon: "square.and.arrow.down", text: "Save") {
                        viewModel.saveButtonTapped()
                    }
                }
                .padding(.horizontal, 16)
                
                Button(action: { dismiss() }) {
                    HStack {
                        Image(systemName: "arrow.counterclockwise")
                        Text("Regenerate")
                    }
                    .font(.system(size: 17, weight: .medium))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 56)
                    .background(Color.black)
                    .cornerRadius(40)
                }
                .padding(.horizontal, 16)
            }
            .padding(.bottom, 16)
        }
        .background(
            Color(.systemGray5)
                .opacity(0.5)
                .ignoresSafeArea()
        )
        .alert(item: $viewModel.activeAlert) { alert in
            Alert(
                title: Text(alert.title),
                message: Text(alert.message),
                dismissButton: .default(Text("OK"))
            )
        }
    }
}

#Preview {
    ResultView(tool: ToolModel(
        title: "Redesign",
        subTitle: "Refresh your space with a new interior look",
        beforeImage: "redesign_before",
        afterImage: "redesign_after"
    ), viewModel: HomeViewModel())
}
