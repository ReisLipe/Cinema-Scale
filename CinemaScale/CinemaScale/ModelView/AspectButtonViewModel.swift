//
//  AspectButtonViewModel.swift
//  CinemaScale
//
//  Created by Joao Filipe Reis Justo da Silva on 11/05/24.
//

import SwiftUI

struct AspectButtonViewModel: View {
    let aspectName: String
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundStyle(Color(red: 68 / 255, green: 84 / 255, blue: 102 / 255))
                .frame(width: 255, height: 64)
                .cornerRadius(15)
            Text(aspectName)
                .font(.system(size: 21.6, weight: .bold, design: .rounded))
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    AspectButtonViewModel(aspectName: "Aspect")
}
