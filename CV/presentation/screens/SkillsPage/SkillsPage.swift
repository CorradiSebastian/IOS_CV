//
//  Skills.swift
//  CV
//
//  Created by Sebastian Eugenio Perez Corradi on 20/03/2025.
//

import SwiftUI

struct SkillsPage: View {
    @StateObject private var viewModel = SkillsPageViewModel() // ✅ Uses ViewModel as state holder
    @State private var skills: [Skill] = []
    
    @State private var selectedSkill: Skill = .android// Track the selected skill
    @State private var showSheet = false // Control sheet visibility
    
    var body: some View {
        let skills = viewModel.skills

        
        VStack(spacing: 20){
            
            Text("Skills")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(20)
                .foregroundColor(.textAccent)
            
            ForEach(viewModel.skills, id: \.self) { skill in
                            SkillComponent(
                                skill: skill,
                                skillClicked: { skill in
                                    DispatchQueue.main.async {
                                        selectedSkill = skill // Set the selected skill
                                        showSheet = true // Show the sheet
                                    }
                                }
                            )
                        }
            
            Spacer()
        }
        .padding()
        .sheet(isPresented: $showSheet){
            ZStack {
                Color.yellow.ignoresSafeArea() // Covers the entire sheet background
                SkillDetailsSheet(skill: $selectedSkill)
            }
            .presentationDetents([.fraction(0.5)])
        }
    }
    
    private func updateSkill(skill: Skill) {
            selectedSkill = skill

            // Slight delay to ensure state updates before showing the sheet
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.11) {
                showSheet = true
            }
        }
}

#Preview {
    SkillsPage()
}


