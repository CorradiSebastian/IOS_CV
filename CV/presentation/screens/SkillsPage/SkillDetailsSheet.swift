//
//  SkillDetailsSheet.swift
//  CV
//
//  Created by Sebastian Eugenio Perez Corradi on 24/03/2025.
//

import SwiftUI

struct SkillDetailsSheet: View {
    let skill: Skill
    var body: some View {
        VStack {
            Text("This is a bottom sheet")
                .font(.title)
                .padding()

            Button("Dismiss") {
                // Dismiss the sheet
                if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                    windowScene.windows.first?.rootViewController?.dismiss(animated: true)
                }
            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: 300)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(radius: 10)
    }
}

#Preview {
    SkillDetailsSheet(skill: .android)
}
