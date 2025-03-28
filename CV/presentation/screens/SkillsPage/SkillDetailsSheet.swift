//
//  SkillDetailsSheet.swift
//  CV
//
//  Created by Sebastian Eugenio Perez Corradi on 24/03/2025.
//

import SwiftUI

struct SkillDetailsSheet: View {
    let skill: Binding<Skill>
    var body: some View {
        VStack {
            Text(skill.wrappedValue.rawValue)
                .font(.title)
                .padding()
            
            Text(skill.wrappedValue.description)
                .font(.title2)
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: 300)
        .background(skill.wrappedValue.color)
        .cornerRadius(15)
        .shadow(radius: 10)
        .padding()
    }
}

#Preview {
    SkillDetailsSheet(skill: .constant(.android)) // ✅ Using `.constant()` for preview
}
