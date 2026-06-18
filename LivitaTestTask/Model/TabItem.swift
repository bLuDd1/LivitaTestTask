//
//  TabItem.swift
//  LivitaTestTask
//
//  Created by Dima on 18.06.2026.
//

import Foundation

enum TabItem: String {
    case tools = "Tools"
    case gallery = "Gallery"
    case discover = "Discover"
    
    var icon: String {
        switch self {
        case .tools: return "sparkles"
        case .gallery: return "photo.on.rectangle"
        case .discover: return "safari.fill"
        }
    }
}
