//
//  CalculateViewModel.swift
//  CinemaScale
//
//  Created by Joao Filipe Reis Justo da Silva on 11/05/24.
//

import SwiftUI

struct CalculateViewModel: View {
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundStyle(Color(red: 5 / 255, green: 172 / 255, blue: 29 / 255))
                .frame(width: 264, height: 64)
                .cornerRadius(15)
            Text("Calculate!")
                .font(.system(size: 21.6, weight: .bold, design: .rounded))
                .foregroundStyle(.white)
        }.padding()
    }
}

#Preview {
    CalculateViewModel()
}
