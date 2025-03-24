//
//  Skills.swift
//  CV
//
//  Created by Sebastian Eugenio Perez Corradi on 22/03/2025.
//

import Foundation
import SwiftUI

enum Skill: String {
    case android = "Android"
    case android_wear = "Android Wear"
    case ios = "IOS"
    case kmp = "Kotlin Multi Platform"
    
    // Computed property for color
    var color: Color {
        switch self {
        case .android: return .red
        case .android_wear: return .blue
        case .ios: return .purple
        case .kmp: return .yellow
        }
    }
    
    var description: String {
        switch self {
        case .android: return "Mobile development for Android devices."
        case .android_wear: return "Development for Android Wear smartwatches."
        case .ios: return "Mobile development for iOS devices."
        case .kmp: return "Kotlin Multiplatform for cross-platform apps."
        }
    }
    
    var title: String {
        switch self {
        case .android: return "Android 9 years of experience"
        case .android_wear: return "Android Wear - Learning"
        case .ios: return "IOS - Learning SwiftUI"
        case .kmp: return "KMP - Learning"
        }
    }
    
    var icon: String {
        switch self {
        case .android: return "iphone.gen3"
        case .android_wear: return "applewatch"
        case .ios: return "iphone.gen3"
        case .kmp: return "display.2"
        }
    }
}

enum OtherSkill: String {
    case mvvm = "Model View ViewModel"
    case mvi = "Model View Intent"
    case clean = "Clean architecture"
    case solid = "SOLID principles"
    case scrum = "Scrum methodology"
    case git = "GIT repository and GIT-Flow"
    case areas = "Healt, Banking, Streaming, Logistics"
}
