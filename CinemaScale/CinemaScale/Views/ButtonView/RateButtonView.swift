//
//  RateButtonViewModel.swift
//  CinemaScale
//
//  Created by Joao Filipe Reis Justo da Silva on 11/05/24.
//

import SwiftUI

struct RateButtonView: View {
    @Binding var rating: Int
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundStyle(.aspect)
                .frame(width: 88, height: 64)
                .cornerRadius(15)
            HStack{
                if rating != 0 {
                    Text(String(rating))
                        .font(.header6)
                        .foregroundStyle(.white)
                    Image(systemName: "star.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.starYellow)
                } else {
                    Image(systemName: "star")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.starYellow)
                }
            }
        }
    }
}
