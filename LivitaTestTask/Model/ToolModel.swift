//
//  ToolModel.swift
//  LivitaTestTask
//
//  Created by Dima on 18.06.2026.
//

import Foundation

struct ToolModel: Identifiable {
    let id = UUID()
    let title: String
    let subTitle: String
    let beforeImage: String
    let afterImage: String
}

