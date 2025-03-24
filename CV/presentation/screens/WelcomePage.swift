//
//  WelcomeScreen.swift
//  CV
//
//  Created by Sebastian Eugenio Perez Corradi on 20/03/2025.
//

import Foundation
import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            ZStack{
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 150, height: 150)
                    .foregroundStyle(.tint)
                
                Image(systemName: "brain.head.profile")
                    .font(.system(size: 70))
                    //.font(.largeTitle)
                    .foregroundStyle(.white)
                    
            }
            
            Text("Welcome")
                .font(.largeTitle)
                .padding(.top)
                .foregroundColor(.textAccent)
            .fontWeight(.bold)
            
            Text ("Sebastian Corradi")
                .font(.title2)
                .foregroundColor(.textAccent)
        }
        .padding()
    }
}

#Preview {
    WelcomePage()
}
