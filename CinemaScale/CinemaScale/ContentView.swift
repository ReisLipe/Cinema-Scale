//
//  ContentView.swift
//  CinemaScale
//
//  Created by Joao Filipe Reis Justo da Silva on 11/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            // Background Color
            Color(red: 32.0 / 255, green: 40.0 / 255, blue: 48.0 / 255)
                .ignoresSafeArea(.all)
            
            // Body
            VStack{
                
                // Header
                HStack{
                    Text("Cinema Scale")
                        .font(.system(size: 35, weight: .bold, design: .rounded))
                        .foregroundStyle(.white)
                    Image(systemName: "popcorn.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 35, height: 35)
                        .foregroundColor(.red)
                }.ignoresSafeArea(.all)
                
                // Aspect Buttons List
                VStack{
                    // Need to find a way to implement this:
                    
                    // ForEach(aspectsList, id: \.self) { aspect in
                    //     HStack {
                    //         AspectButtonViewModel(aspectName: aspect.aspectName)
                    //         RateButtonViewModel(rating: aspect.aspectRate)
                    //     }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
