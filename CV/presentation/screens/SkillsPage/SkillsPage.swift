//
//  Skills.swift
//  CV
//
//  Created by Sebastian Eugenio Perez Corradi on 20/03/2025.
//

import SwiftUI

struct SkillsPage: View {
    @StateObject private var viewModel = SkillsPageViewModel() // ✅ Uses ViewModel as state holder
    var body: some View {
        VStack(spacing: 20){
//            Text(viewModel.text)
//            Button("Update Text") {
//                viewModel.updateText(message: "hola")
//                        }
            Text("Skills")
                .font(.title)
                .fontWeight(.semibold)
                .padding(20)
                .foregroundColor(.textAccent)
            
            Skill(iconName: "iphone.gen3",
                  description: "Android 9 years of experience",
                  color: Color.red,
                  skillClicked: viewModel.skillClicked)
            Skill(iconName: "applewatch",
                  description: "Android wear - Learning",
                  color:Color.blue,
                  skillClicked: viewModel.skillClicked)
            Skill(iconName: "iphone.gen3",
                  description: "IOS - Learning",
                  color: Color.green,
                  skillClicked: viewModel.skillClicked)
            Skill(iconName: "iphone.gen3",
                  description: "KMP - Learning",
                  color: Color.purple,
                  skillClicked: viewModel.skillClicked)
            
        }
        .padding()
    }
}

#Preview {
    SkillsPage()
}
