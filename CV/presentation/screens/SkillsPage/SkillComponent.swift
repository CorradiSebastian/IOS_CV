//
//  Skill.swift
//  CV
//
//  Created by Sebastian Eugenio Perez Corradi on 20/03/2025.
//

import SwiftUI

struct SkillComponent: View {
    let iconName: String
    let skillClicked:(Skill) -> Void
    let skill: Skill
    var body: some View {
        Button(action: {skillClicked(skill)}
        ){
            HStack{
                Image(systemName: skill.icon)
                    .font(.largeTitle)
                    .frame(width:50)
                    .padding(.trailing, 10)
                    .foregroundColor(.lightGrayCV)
                Text(skill.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.lightGrayCV)
                    .font(.title2)
                Spacer()
            }
            .padding()
            //.background(.tint, in:RoundedRectangle(cornerRadius: 12))
            .background{
                RoundedRectangle(cornerRadius: 12)
                //.foregroundStyle(color)
                    .foregroundColor(skill.color)
                    .opacity(0.80)
                    .brightness(-0.2)
            }
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    SkillComponent(
        iconName: "person.2.crop.square.stack.fill",
        skillClicked: { (skill) in
            print("Skill clicked: \(skill)")},
        skill: .kmp
    )
}
