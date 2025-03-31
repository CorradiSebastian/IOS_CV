//
//  OtherSkillDetailSheet.swift
//  CV
//
//  Created by Sebastian Eugenio Perez Corradi on 28/03/2025.
//

import SwiftUI

struct OtherSkillDetailsSheet: View {
    let OtherSkill: Binding<OtherSkill>
    var body: some View {
        VStack {
            Text(OtherSkill.wrappedValue.rawValue)
                .font(.title)
                .padding()
            
            Text(OtherSkill.wrappedValue.description)
                .font(.title2)
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: 300)
        .background(OtherSkill.wrappedValue.color)
        .cornerRadius(15)
        .shadow(radius: 10)
        .padding()
    }
}

#Preview {
    OtherSkillDetailsSheet(OtherSkill: .constant(.mvvm)) // ✅ Using `.constant()` for preview
}
