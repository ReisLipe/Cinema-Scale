//
//  RatePopUp.swift
//  CinemaScale
//
//  Created by Joao Filipe Reis Justo da Silva on 11/05/24.
//

import SwiftUI

struct RatePopUpView: View {
    @Binding var aspectRate: Int
    let aspectName: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 344, height: 160)
                .foregroundColor(Color(red: 32/255, green: 40/255, blue: 48/255))
            VStack{
                Text("\(aspectName)")
                    .font(.system(size: 24, weight: .bold, design: .rounded))
                    .foregroundStyle(.white)
                    .padding()
                TextField("Insert aspect rate", value: $aspectRate, format: .number)
            }
        }
    }
}
