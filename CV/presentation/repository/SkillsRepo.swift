//
//  SkillsDetailsRepo.swift
//  CV
//
//  Created by Sebastian Eugenio Perez Corradi on 21/03/2025.
//

import Foundation

protocol SkillsRepository {
    func getSkillDetails(skill: Skill) async -> String
    func getSkills() async throws -> [Skill]
}
