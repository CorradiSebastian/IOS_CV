//
//  OtherSkill.swift
//  CV
//
//  Created by Sebastian Eugenio Perez Corradi on 28/03/2025.
//

import Foundation
import SwiftUI

enum OtherSkill: String {
    case mvvm = "Model View ViewModel"
    case mvi = "Model View Intent"
    case clean = "Clean architecture"
    case solid = "SOLID principles"
    case scrum = "Scrum methodology"
    case git = "GIT repository and GIT-Flow"
    case areas = "Healt, Banking, Streaming, Logistics"
    
    // Computed property for color
    var color: Color {
        switch self {
        case .mvvm: return .yellow
        case .mvi: return .brown
        case .clean: return .cyan
        case .solid: return .green
        case .scrum: return .purple
        case .git: return .pink
        case .areas: return .indigo
            
        }
    }
    
    var description: String {
        switch self {
        case .mvvm: return "Model View ViewModel, relys on a observable pattern, allows reactive programming, also helps to separate the view from the bussines logic."
        case .mvi: return "Model View Intent, similar to mvvm but the comunication between view and viewmodel is unidirectional, the view gets the methods available and not a reference to the viewmdel."
        case .clean: return "Clean architecture separates the code in layers, separating responsibilities, each layer comunicates with the next one without jumping any of those"
        case .solid: return "SOLID principles, for scalable and maintable code, in the same page with clean and MVVM."
        case .scrum: return "SCRUM, an agile methodology including several ceremonies like dailies, planning, review, post mortem, etc. Each project implements it on a different way."
        case .git: return "Tool to versionate the code and track the changes."
        case .areas: return "Healt, Banking, Streaming and Logistics, these are the wokring areas in which I was involved developing apps.  "
        }
    }
    
    var title: String {
        switch self {
            case .mvvm: return "Model, View, Viewmodel"
            case .mvi: return "Model View Intent"
            case .clean: return "CLEAN architecture"
            case .solid: return "SOLID principles"
            case .scrum: return "Scrum methodology"
            case .git: return "GIT for versioning"
            case .areas: return "Healt, Banking, Streaming, Logistics"
        }
    }
    
}
