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
    
    @State private var selectedSkill: Skill? // Track the selected skill
    @State private var showSheet = false // Control sheet visibility
    
    
    var body: some View {
        let skills = viewModel.skills

        
        VStack(spacing: 20){
            
            Text("Skills")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(20)
                .foregroundColor(.textAccent)
            
            SkillComponent(iconName: "iphone.gen3",
                skillClicked: viewModel.skillClicked,
                skill: Skill.android)
                  
            SkillComponent(iconName: "applewatch",
                skillClicked: viewModel.skillClicked,
                skill: .android_wear)
            
            SkillComponent(iconName: "iphone.gen3",
                //skillClicked: viewModel.skillClicked,
                skillClicked: displayDetails,
                skill: .ios)
            
            SkillComponent(iconName: "iphone.gen3",
                skillClicked: { skill in
                selectedSkill = skill // Set the selected skill
                showSheet = true // Show the sheet
            },
                skill: .kmp)
            
            Spacer()
        }
        .padding()
//        .onAppear {
//                        print("This is a debug message from SwiftUI")
//                        print("Skills: \(skills)")
//                    }
        //Spacer()
        .sheet(isPresented: $showSheet) {
                    if let skill = selectedSkill {
                        SkillDetailsSheet(skill: skill) // Pass the selected skill
                    }
                }
    }
}

func displayDetails(skill: Skill){
    //
}

#Preview {
    SkillsPage()
}
