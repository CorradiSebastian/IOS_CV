//
//  Skill.swift
//  CV
//
//  Created by Sebastian Eugenio Perez Corradi on 20/03/2025.
//

import SwiftUI

struct Skill: View {
    let iconName: String
    let description: String
    let color: Color
    let skillClicked:(String) -> Void
    var body: some View {
        Button(action: {skillClicked(description)}
        ){
            HStack{
                Image(systemName: iconName)
                    .font(.largeTitle)
                    .frame(width:50)
                    .padding(.trailing, 10)
                    .foregroundColor(.lightGrayCV)
                Text(description)
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
                    .foregroundColor(color)
                    .opacity(0.80)
                    .brightness(-0.2)
            }
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    Skill(
        iconName: "person.2.crop.square.stack.fill",
        description: "A multiline description about a feature paired with the image on the left.",
        color: Color.blue,
        skillClicked: { (skill) in
            print("Skill clicked: \(skill)")}
    )
}
