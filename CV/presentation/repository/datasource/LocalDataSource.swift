//
//  LocalDataSource.swift
//  CV
//
//  Created by Sebastian Eugenio Perez Corradi on 22/03/2025.
//

import Foundation

protocol LocalDataSource {
    func getSkills() async -> [Skill]
    func getOtherSkills() async -> [OtherSkill]
    func getSkillDetail(skill: Skill) -> String
}

class LocalDataSourceImpl: LocalDataSource {

    func getSkills() async -> [Skill] {
        do{
            try await Task.sleep(nanoseconds: 1_000_000_000)
        } catch{
            
        }
        return [.android, .android_wear, .ios, .kmp]
    }

    func getOtherSkills() async -> [OtherSkill] {
        do{
            try await Task.sleep(nanoseconds: 1_000_000_000)
        } catch{
            
        }
        return [.clean, .mvvm, .mvi, .solid, .git, .scrum, .areas]
    }

    //return [.clean, .mvvm, .mvi, .solid, .git, .scrum, .areas]
    func getSkillDetail(skill: Skill) -> String{
        switch skill{
        case .android: return "9 years of experience developing navite applications, konwledge of Java, Kotlin, ROOM, Retrofit, Compose, Kotlin Flows, LiveData, FTP, design and architectural patterns, etc."
        
        case .android_wear: return "Learning and wear development, sources will be uploaded into GIT"
        
        case .ios: return "Learning IOS programming with SwiftUI, implementing CLEAN, MVVM, SOLID, etc. This app code is available in GIT";
            
        case .kmp: return "development of Kotlin Multi Platform modules, to be used from several platforms and IDEs. Code will be uploaded to GIT ";
        }
    }
    
    func getOtherSkillDetail(otherSkill: OtherSkill) -> String{
        switch otherSkill{
        case .clean: return "CLEAN architecture consist in separate code in layers without overlap them. This separates responsibilites increments cohesion and avoids coupling"
        
        case .git: return "Years of experience using GIT and GIT Flows, to versionate code, and work in a orderly manner"
        
        case .mvi: return "Model View Intent, is an implementation of observer pattern, root for the reactive programming, similar to MVVM but works in a unidirectional way."
            
        case .mvvm: return "Model View ViewModel is an implementation of observer pattern, root for the reactive programming, allows to separate the UI from the logic, and work in a reactive way."
            
        case .scrum: return "SCRUM  is an agile methodology that focus in process and people, not in documentation, allows to easily adapt to changes durint the development process."
            
        case .solid: return "SOLID principles is the basis to develop a scalable and easy to maintain code."
            
        case .areas: return "Worked in several areas learning the bussines rules, logic and tools in every one of them."
        }
    }
}
