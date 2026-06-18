//
//  ResultButton.swift
//  LivitaTestTask
//
//  Created by Dima on 18.06.2026.
//

import SwiftUI

struct ResultButton: View {
    let icon: String
    let text: String
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            HStack {
                Image(systemName: icon)
                Text(text)
            }
            .font(.system(size: 15, weight: .medium))
            .foregroundColor(.black)
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .background(Color.white)
            .cornerRadius(40)
            .overlay(
                RoundedRectangle(cornerRadius: 40)
                    .stroke(Color.gray.opacity(0.3), lineWidth: 1)
            )
        }
        
    }
}
