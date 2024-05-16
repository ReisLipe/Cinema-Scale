//
//  HeaderView.swift
//  CinemaScale
//
//  Created by Joao Filipe Reis Justo da Silva on 16/05/24.
//


import SwiftUI


struct HeaderView: View {
    var body: some View {
        HStack{
            Text("Cinema Scale")
                .font(.header1)
                .foregroundStyle(.white)
            
            Image(systemName: "popcorn.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 36, height: 36)
                .foregroundColor(.red)
        }
    }
}
