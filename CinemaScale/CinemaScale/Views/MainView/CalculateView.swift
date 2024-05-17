//
//  CalculateView.swift
//  CinemaScale
//
//  Created by Joao Filipe Reis Justo da Silva on 16/05/24.
//


import SwiftUI


struct CalculateView: View {
    @Binding var totalScore: Float
    @Binding var aspectsList: [Aspects]
    @Binding var showResultPopup: Bool
    var selectedScoreSystem: ScoreSystems
    
    var body: some View {
        Button(action: {
            totalScore = 0
            for aspect in aspectsList {
                totalScore += Float(aspect.rate)
            }
            totalScore = (totalScore * selectedScoreSystem.scoreSystemMultiplier()) / 100
            showResultPopup = true
        }, label: {
            CalculateButtonView()
        })
    }
}
