//
//  LabelModifier.swift
//  LivitaTestTask
//
//  Created by Dima on 18.06.2026.
//

import SwiftUI

struct LabelModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 14, weight: .semibold))
            .frame(width: 56, height: 26)
            .background(.white.opacity(0.8))
            .foregroundColor(.black)
            .cornerRadius(96)
            .padding(13)
    }
}
