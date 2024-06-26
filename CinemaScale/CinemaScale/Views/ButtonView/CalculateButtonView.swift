//
//  CalculateViewModel.swift
//  CinemaScale
//
//  Created by Joao Filipe Reis Justo da Silva on 11/05/24.
//

import SwiftUI

struct CalculateButtonView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundStyle(Color.letterboxdGreen)
                .frame(width: 264, height: 64)
                .cornerRadius(15)
            Text("Calculate!")
                .font(.header5)
                .foregroundColor(.white)
        }.padding()
    }
}

#Preview {
    CalculateButtonView()
}
