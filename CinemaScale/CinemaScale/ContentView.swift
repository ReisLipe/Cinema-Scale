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
                }
                
                // Aspect Buttons List
                ScrollView{
                    VStack{
                        ForEach(Array(aspectsList.enumerated()), id: \.offset) { aspect in
                            HStack {
                                AspectButtonViewModel(aspectName: aspect.element.aspectName)
                                RateButtonViewModel(rating: aspect.element.aspectRate)
                                // Rate popup changes aspect.aspectRate value
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
