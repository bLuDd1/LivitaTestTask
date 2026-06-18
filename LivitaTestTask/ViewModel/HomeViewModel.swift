//
//  HomeViewModel.swift
//  LivitaTestTask
//
//  Created by Dima on 18.06.2026.
//

import Foundation
import Observation

@Observable
final class HomeViewModel {
    var tools: [ToolModel] = []
    
    var selectedTool: ToolModel?
    
    init() {
        loadTools()
    }
    
    private func loadTools() {
        self.tools = [
            ToolModel(
                title: "Redesign",
                subTitle: "Refresh your space with a new interior look",
                beforeImage: "redesign_before",
                afterImage: "redesign_after"
            ),
            ToolModel(
                title: "Sketch to Render",
                subTitle: "Refresh your space with a new interior look",
                beforeImage: "sketch_before",
                afterImage: "sketch_after"
            ),
            ToolModel(
                title: "Design Transfer",
                subTitle: "Refresh your space with a new interior look",
                beforeImage: "design_before",
                afterImage: "design_after"
            )
        ]
    }
}
