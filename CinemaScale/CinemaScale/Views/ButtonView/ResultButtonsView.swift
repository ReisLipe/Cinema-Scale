//
//  ResetButtonViewModel.swift
//  CinemaScale
//
//  Created by Joao Filipe Reis Justo da Silva on 14/05/24.
//


import SwiftUI


struct ResultButtonView: View {
    let title: String
    let color: Color
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundStyle(color)
                .frame(width: 179, height: 64)
                .cornerRadius(15)
            Text(title)
                .font(.system(size: 21.6, weight: .bold, design: .rounded))
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    ResultButtonView(title: "Action", color: Color.letterboxdGreen)
}
