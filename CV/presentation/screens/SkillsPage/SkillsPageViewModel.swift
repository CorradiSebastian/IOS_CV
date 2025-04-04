//
//  SkillsPageViewModel.swift
//  CV
//
//  Created by Sebastian Eugenio Perez Corradi on 21/03/2025.
//

import Combine

class SkillsPageViewModel: ObservableObject {
    private let repository: SkillsRepository
    
    @Published var text: String = "Hello, Guybrush"
    @Published var skillDetail: String = "Hello, Guybrush"
    @Published var skills: [Skill] = []
    @Published var otherSkills: [OtherSkill] = []
    
    init(repository: SkillsRepository = SkillsRepositoryImpl()) {
        self.repository = repository
        loadSkills()
    }

    func loadSkills(){
        Task {
            skills = try await repository.getSkills()
            print("---------------Skills loaded: \(skills)")
        }
    
    }
    func updateText(message: String) {
        text = message
    }
    
    func skillClicked(skill: Skill) {
        Task {
            let detail = await repository.getSkillDetails(skill: skill)
            print("skill: \(skill)")
            print("detail: \(detail)")
        }
        text = skill.rawValue
    }

}
