//
//  HeaderView.swift
//  CinemaScale
//
//  Created by Joao Filipe Reis Justo da Silva on 16/05/24.
//


import SwiftUI


struct HeaderView: View {
    @Binding var isActive: Bool
    
    var body: some View {
        ZStack{
            Button(action: {isActive = true}, label: {
                HStack{
                    Image(systemName: "popcorn.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 36, height: 36)
                        .foregroundColor(.red)
                    
                    Text("Cinema Scale")
                        .font(.header1)
                        .foregroundStyle(.white)
                    
                    Image(systemName: "info.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15, height: 15)
                        .foregroundColor(.white)
                }
            })
        }.padding(.bottom)
    }
}


#Preview {
    ZStack{
        Color.backGround
            .ignoresSafeArea(.all)
        HeaderView(isActive: .constant(true))
    }
}
