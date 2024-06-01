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
    @State var showAspectPopup: Bool = false
    @State var showInfoPopup: Bool = false
    @State var itFacotr: Bool? = nil
    @State var selectedScoreSystem: ScoreSystems = .five
    @ObservedObject var aspectsList: AspectsList = .init()
    
    
    var body: some View {
        ZStack{
            
            // BACKGROUND
            Color(.backGround)
                .ignoresSafeArea(.all)
            
            VStack(spacing: .zero){
                // HEADER
                ZStack(alignment: .bottom) {
                    HeaderView(isActive: $showInfoPopup)
                }
                .padding(.bottom, 10)
                ScrollView{
                    // ASPECT LIST
                    AspectListView(
                        aspectsList: $aspectsList.aspectsList,
                        tappedAspect: $aspectsList.tappedAspect,
                        showRatePopup: $showRatePopup,
                        showAspectPopup: $showAspectPopup
                    )
                    
                    // SCORE SYSTEM
                    ScoreSystemView(selectedScoreSystem: $selectedScoreSystem)
                    
                    // CALCULATE BUTTON
                    CalculateView(
                        totalScore: $totalScore,
                        aspectsList: $aspectsList.aspectsList,
                        showResultPopup: $showResultPopup,
                        selectedScoreSystem: selectedScoreSystem
                    )
                }
            }
        }
        
        // Aspect popup
        .overlay(alignment: .center){
            if showAspectPopup {
                AspectPopupView(
                    isActive: $showAspectPopup,
                    aspect: $aspectsList.tappedAspect
                )
            }
        }
        
        // Rate popup
        .overlay(alignment: .center){
                RatePopUpView(
                    isActive: $showRatePopup,
                    aspect: $aspectsList.tappedAspect,
                    aspectsList: $aspectsList.aspectsList
                )
        }
        .animation(.easeIn.speed(0.9), value: showRatePopup)
        
        // Result popup
        .overlay(alignment: .bottom){
            if showResultPopup {
                ResultPopUpView(
                    isActive: $showResultPopup,
                    aspectsList: $aspectsList.aspectsList,
                    result: $totalScore
                )
            }
        }
        .animation(.easeIn.speed(0.9), value: showResultPopup)
        .ignoresSafeArea(edges: .bottom)
        
        // Info popup
        .overlay(alignment: .center){
            InfoPopupView(isActive: $showInfoPopup)
        }
        .animation(.easeIn.speed(0.9), value: showInfoPopup)
    }
}

#Preview {
    ContentView()
}
