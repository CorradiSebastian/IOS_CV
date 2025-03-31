//
//  OtherSkillsPageViewModel.swift
//  CV
//
//  Created by Sebastian Eugenio Perez Corradi on 28/03/2025.
//

import Combine

class OtherSkillsPageViewModel: ObservableObject {
    private let repository: SkillsRepository
    @Published var otherSkills: [OtherSkill] = []
    
    init(repository: SkillsRepository = SkillsRepositoryImpl()) {
        self.repository = repository
        loadOtherSkills()
    }

    func loadOtherSkills(){
        Task {
            otherSkills = try await repository.getOtherSkills()
        }
    }
}
