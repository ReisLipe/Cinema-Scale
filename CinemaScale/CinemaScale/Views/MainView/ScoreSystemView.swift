//
//  ScoreSystemView.swift
//  CinemaScale
//
//  Created by Joao Filipe Reis Justo da Silva on 16/05/24.
//


import SwiftUI


struct ScoreSystemView: View {
    @Binding var selectedScoreSystem: ScoreSystems
    
    var body: some View {
        VStack{
            // Rate System warning
            Text("Select Your Score System:")
                .font(.header5)
                .foregroundStyle(.white)
                .padding()
            
            // Rate system segmented control
            Picker("Score System Selection", selection: $selectedScoreSystem) {
                ForEach(ScoreSystems.allCases, id: \.self) { scoreSystem in
                    Text(scoreSystem.rawValue)
                        .tag(scoreSystem)
                }
            }
            .pickerStyle(.segmented)
            .background(.letterboxdGreen)
            .cornerRadius(8)
            .padding()
        }
    }
}
