//
//  RateButtonViewModel.swift
//  CinemaScale
//
//  Created by Joao Filipe Reis Justo da Silva on 11/05/24.
//

import SwiftUI

struct RateButtonView: View {
    let rating: Int
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundStyle(Color(red: 68 / 255, green: 84 / 255, blue: 102 / 255))
                .frame(width: 88, height: 64)
                .cornerRadius(15)
            HStack{
                if rating != 0 {
                    Text(String(rating))
                        .font(.system(size: 21.6, weight: .bold, design: .rounded))
                        .foregroundStyle(.white)
                    Image(systemName: "star.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 21.6, height: 21.6)
                        .foregroundColor(Color(red: 255 / 255, green: 204 / 255, blue: 0 / 255))
                } else {
                    Image(systemName: "star")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 21.6, height: 21.6)
                        .foregroundColor(Color(red: 255 / 255, green: 204 / 255, blue: 0 / 255))
                }
            }
        }
    }
}

#Preview {
    RateButtonView(rating: 2)
}
