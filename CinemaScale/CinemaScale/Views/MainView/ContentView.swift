//
//  ContentView.swift
//  CinemaScale
//
//  Created by Joao Filipe Reis Justo da Silva on 11/05/24.
//

import SwiftUI

struct ContentView: View {
    @State var totalScore: Float = 0
    // @State var allAspectsRated: Bool = false
    @State var showResultPopup: Bool = false
    @State var showRatePopup: Bool = false
    @State var selectedScoreSystem: ScoreSystems = .five
    @State var tappedAspect: Aspects = Aspects(
        aspectName: "NoAspect",
        icon: Image(systemName: "xmark"))
    
    
    @State var aspectsList: [Aspects] = [
        Aspects(
            aspectName: "Plot",
            icon: Image(systemName: "book")),
        Aspects(
            aspectName: "Attraction",
            icon: Image(systemName: "popcorn")),
        Aspects(
            aspectName: "Theme",
            icon: Image(systemName: "heart.circle")),
        Aspects(
            aspectName: "Acting",
            icon: Image(systemName: "theatermasks")),
        Aspects(
            aspectName: "Dialogue",
            icon: Image(systemName: "ellipsis.message")),
        Aspects(
            aspectName: "Cinematography",
            icon: Image(systemName: "photo.stack")),
        Aspects(
            aspectName: "Editing",
            icon: Image(systemName: "scissors")),
        Aspects(
            aspectName: "Soundtrack",
            icon: Image(systemName: "hifispeakers")),
        Aspects(
            aspectName: "Directing",
            icon: Image(systemName: "movieclapper")),
        Aspects(
            aspectName: "It Factor",
            icon: Image(systemName: "medal"))
    ]
    
    
    var body: some View {
        ZStack{
            
            // BACKGROUND
            Color(.backGround)
                .ignoresSafeArea(.all)
            
            VStack{
                // HEADER
                HeaderView()
                
                ScrollView{
                    // ASPECT LIST
                    AspectListView(
                        aspectsList: $aspectsList, 
                        tappedAspect: $tappedAspect,
                        showRatePopup: $showRatePopup)
                    
                    // SCORE SYSTEM
                    ScoreSystemView(selectedScoreSystem: $selectedScoreSystem)
                    
                    // CALCULATE BUTTON
                    CalculateView(
                        totalScore: $totalScore,
                        aspectsList: $aspectsList,
                        showResultPopup: $showResultPopup,
                        selectedScoreSystem: selectedScoreSystem)
                }
            }
        }
        
        // Rate popup
        .overlay(alignment: .center){
            if showRatePopup {
                RatePopUpView(
                    isActive: $showRatePopup,
                    aspect: $tappedAspect,
                    aspectsList: $aspectsList)
            }
        }
        .animation(.easeIn.speed(0.9), value: showRatePopup)
        
        // Result popup
        .overlay(alignment: .bottom){
            if showResultPopup {
                ResultPopUpView(
                    isActive: $showResultPopup,
                    aspectsList: $aspectsList,
                    result: $totalScore)
            }
        }
        .animation(.easeIn.speed(0.9), value: showResultPopup)
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    ContentView()
}
