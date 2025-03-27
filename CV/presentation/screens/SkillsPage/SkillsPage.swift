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
    @State private var text = "" // Control sheet visibility
    
    
    var body: some View {
        //let skills = viewModel.skills

        
        VStack(spacing: 20){
            
            Text("Skills")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(20)
                .foregroundColor(.textAccent)
            
            SkillComponent(
                skill: Skill.android,
                skillClicked: { skill in
                    DispatchQueue.main.async {
                        selectedSkill = .android // Set the selected skill
                        showSheet = true // Show the sheet
                    }
                }
            )
            
            SkillComponent(
                skill: .android_wear,
                skillClicked: { theSkill in
                    print("callback, skill: \(theSkill)")
                    DispatchQueue.main.async {
                        selectedSkill = .android_wear // Set the selected skill
                        showSheet = true // Show the sheet
                    }
                }
            )
            
            SkillComponent(
                skill: .ios,
                skillClicked: { theSkill in
                    updateSkill(skill: theSkill, message: "KMP clicked")
                }
            )
            
            SkillComponent(
                skill: .kmp,
                skillClicked: { theSkill in
                    print("callback, skill: \(theSkill)")
                    selectedSkill = theSkill // Set the selected skill
                    text = "kmp clicked"
                    DispatchQueue.main.async {
                        selectedSkill = theSkill // Set the selected skill
                        text = "kmp clicked"
                        print("from skillpage, text: \(text), selected: \(selectedSkill)")
                        showSheet = true // Show the sheet
                    }
                }
            )
            Spacer()
        }
        .padding()
        .sheet(isPresented: $showSheet){
            ZStack {
                Color.yellow.ignoresSafeArea() // Covers the entire sheet background
                SkillDetailsSheet(skill: $selectedSkill, text: text)
            }
            .presentationDetents([.fraction(0.5)])
        }
    }
    
    private func updateSkill(skill: Skill, message: String) {
            selectedSkill = skill
            text = message

            // Slight delay to ensure state updates before showing the sheet
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.11) {
                print("from skillpage, text: \(text), selected: \(selectedSkill)")
                showSheet = true
            }
        }
}

func displayDetails(skill: Skill){
    //
}

#Preview {
    SkillsPage()
}


