//
//  OtherSkillsPage.swift
//  CV
//
//  Created by Sebastian Eugenio Perez Corradi on 28/03/2025.
//

import SwiftUI

struct OtherSkillsPage: View {
    @StateObject private var viewModel = OtherSkillsPageViewModel() // ✅ Uses ViewModel as state holder
    @State private var otherSkills: [OtherSkill] = []
    
    @State private var selectedSkill: OtherSkill = .mvi// Track the selected skill
    @State private var showSheet = false // Control sheet visibility
    
    var body: some View {
        //let skills = viewModel.skills

        
        VStack(spacing: 20){
            
            Text("Other Skills")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(20)
                .foregroundColor(.textAccent)
            
            let columns = [
                    GridItem(.flexible(), spacing: 20),
                    GridItem(.flexible(), spacing: 20)
                ]
            
            LazyVGrid(columns: columns, spacing: 20) {
                            ForEach(viewModel.otherSkills, id: \.self) { otherSkill in
                                OtherSkillComponent(
                                    otherSkill: otherSkill,
                                    skillClicked: { otherSkillSelected in
                                        DispatchQueue.main.async {
                                            selectedSkill = otherSkillSelected // Set the selected skill
                                            showSheet = true // Show the sheet
                                        }
                                    }
                                )
                            }
                        }
                        .padding()
            Spacer()
        }
        .padding()
        .sheet(isPresented: $showSheet){
            ZStack {
                Color.yellow.ignoresSafeArea() // Covers the entire sheet background
                OtherSkillDetailsSheet(OtherSkill: $selectedSkill)
            }
            .presentationDetents([.fraction(0.5)])
        }
    }
    
    private func updateSkill(skill: OtherSkill) {
            selectedSkill = skill

            // Slight delay to ensure state updates before showing the sheet
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.11) {
                showSheet = true
            }
        }
}


#Preview {
    OtherSkillsPage()
}
