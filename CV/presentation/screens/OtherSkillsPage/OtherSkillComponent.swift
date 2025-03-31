//
//  OtherSkillComponent.swift
//  CV
//
//  Created by Sebastian Eugenio Perez Corradi on 28/03/2025.
//

import SwiftUI

struct OtherSkillComponent: View {
    let otherSkill: OtherSkill
    let skillClicked:(OtherSkill) -> Void
    var body: some View {
        Button(action: {
            skillClicked(otherSkill)}
        ){
            HStack{
                Text(otherSkill.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.lightGrayCV)
                    .font(.title2)
                Spacer()
            }
            .padding()
            .background{
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(otherSkill.color)
                    .opacity(0.80)
                    .brightness(-0.2)
            }
            .foregroundStyle(.white)
        }
    }
}

//#Preview {
//    SkillComponent(
//        skill: .kmp,
//        skillClicked: { (skill) in
//            print("Skill clicked: \(skill)")}
//    )
//}

#Preview {
    OtherSkillComponent(
        otherSkill: .mvvm,
                skillClicked: { (skill) in
                    print("Skill clicked: \(skill)")})
}
