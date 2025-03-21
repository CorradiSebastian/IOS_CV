//
//  SkillsPageViewModel.swift
//  CV
//
//  Created by Sebastian Eugenio Perez Corradi on 21/03/2025.
//

import SwiftUI
class SkillsPageViewModel: ObservableObject {
    @Published var text: String = "Hello, Guybrush"
    
    func updateText(message: String) {
        text = message
    }
    
    func skillClicked(skill: String) {
        print("skill: \(skill)")
        text = skill
    }
}
