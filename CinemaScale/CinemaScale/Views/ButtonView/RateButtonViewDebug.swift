//
//  RateButtonViewModelDebug.swift
//  CinemaScale
//
//  Created by Joao Filipe Reis Justo da Silva on 14/05/24.
//

import SwiftUI

struct RateButtonViewDebug: View {
    @Binding var rating: Int
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundStyle(Color.aspect)
                .frame(width: 88, height: 64)
                .cornerRadius(15)
            HStack{
                TextField("Rating", value: $rating, format: .number)
                    .frame(width: 44, height: 32)
                    .foregroundColor(.white)
            }
        }
    }
}
