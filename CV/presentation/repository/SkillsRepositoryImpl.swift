//
//  SkillsDetailsRepositoryImpl.swift
//  CV
//
//  Created by Sebastian Eugenio Perez Corradi on 21/03/2025.
//

import Foundation

class SkillsRepositoryImpl: SkillsRepository {
    private let localDataSource: LocalDataSource
    
    init(localDataSource: LocalDataSource = LocalDataSourceImpl()) {
            self.localDataSource = localDataSource
        }
    
    func getSkillDetails(skill: Skill) async -> String {
        return localDataSource.getSkillDetail(skill: skill)
    }
    func getSkills() async -> [Skill] {
        return await localDataSource.getSkills()
    }
}
