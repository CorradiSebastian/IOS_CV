//
//  PersonalDataPAge.swift
//  CV
//
//  Created by Sebastian Eugenio Perez Corradi on 21/03/2025.
//

import SwiftUI

struct PersonalData: View {
    var body: some View {
        VStack {
            Text("Personal Data")
                .font(.largeTitle)
                .padding(.top)
                .foregroundColor(.textAccent)
                .fontWeight(.bold)
                .padding()
            
            VStack{
                PersonalDataItem(content: "Resident in Buenos Aires, Argentina")
                PersonalDataItem(content: "Speak English fluently")
                PersonalDataItem(content: "Bachelor Degree in System Analysis")
                PersonalDataItem(content: "Code uploaded in https://github.com/CorradiSebastian")
                PersonalDataItem(content: "Linkedin profile in https://www.linkedin.com/in/sebastoian/")
                PersonalDataItem(content: "StackOverflow: https://stackoverflow.com/users/3703091/sebastian-corradi")
                
            }
            //.frame(height: 100)
            //.frame(maxWidth: .infinity)
            .background{
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.backgroundTextWhite)
                    .opacity(0.50)
                    //.brightness(-0.2)
            }
            //.foregroundStyle(.white)
            .padding()
            Spacer()
        }
        
    }
}

#Preview {
    PersonalData()
        .background(Gradient(colors: gradientColors))
}

struct PersonalDataItem: View{
    let content: String
    var body: some View {
        HStack{
//            Text("✓").foregroundStyle(.blue)
//                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Text(content)
                .fontWeight(.semibold)
                .font(.title2)
                .foregroundStyle(.darkGrayCV)
            Spacer()
        }
        .foregroundColor(.black)
        .padding()
    }
}
