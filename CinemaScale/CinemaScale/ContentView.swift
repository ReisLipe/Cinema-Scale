//
//  ContentView.swift
//  CinemaScale
//
//  Created by Joao Filipe Reis Justo da Silva on 11/05/24.
//

import SwiftUI

struct ContentView: View {
    @State var result: Float = 0
    @State var resultCalculated: Bool = false
    @State var allRated: Bool = false
    @State var selectedScoreSystem: ScoreSystems = .five
    @State var reset: Bool = false
    @State var closeResult: Bool = false
    @State var aspectsList: [Aspects] = [
        Aspects(aspectName: "Plot"),
        Aspects(aspectName: "Attraction"),
        Aspects(aspectName: "Theme"),
        Aspects(aspectName: "Acting"),
        Aspects(aspectName: "Dialogue"),
        Aspects(aspectName: "Cinematography"),
        Aspects(aspectName: "Editing"),
        Aspects(aspectName: "Soundtrack"),
        Aspects(aspectName: "Directing"),
        Aspects(aspectName: "It Factor")
    ]
    
    
    var body: some View {
        ZStack{
            // Background Color
            Color(.backGround)
                .ignoresSafeArea(.all)
            // App
            VStack{
                // Header
                HStack{
                    Text("Cinema Scale")
                        .font(.system(size: 35, weight: .bold, design: .rounded))
                        .foregroundStyle(.white)
                    
                    // todo:  need to improve the logo
                    Image(systemName: "popcorn.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 35, height: 35)
                        .foregroundColor(.red)
                }
                // Body
                ScrollView{
                    // Aspect Buttons List
                    VStack{
                        ForEach(0..<aspectsList.count, id:\.self) { aspect in
                            HStack {
                                
                                // Aspect Button
                                // todo: fazer o popup do aspect aparecer quando clicado
                                Button(action: {}, label: {
                                    AspectButtonViewModel(aspectName: aspectsList[aspect].aspectName)
                                }).padding(.leading)
                                
                                // Rate Button
                                Button(action: {}, label: {
                                    RateButtonViewModelDebug(rating: $aspectsList[aspect].aspectRate)
                                }).padding(.trailing)
                            }
                        }
                    }
                    
                    // Rate System Segmented Control
                    Text("Select Your Score System:")
                        .font(.system(size: 21.6, weight: .bold, design: .default))
                        .foregroundStyle(.white)
                        .padding()
                    
                    Picker("Score System Selection", selection: $selectedScoreSystem) {
                        ForEach(ScoreSystems.allCases, id: \.self) { scoreSystem in
                            Text(scoreSystem.rawValue)
                                .tag(scoreSystem)
                            // todo: need to change text color
                        }
                    }
                    .pickerStyle(.segmented)
                    .background(.letterboxdGreen)
                    .colorMultiply(.letterboxdOrange)
                    .cornerRadius(8)
                    .padding()
                    
                    // Calculate Button:
                    Button(action: {
                        for aspect in aspectsList {
                            result += Float(aspect.aspectRate)
                        }
                        result = (result * selectedScoreSystem.scoreSystemMultiplier()) / 100 //10
                        resultCalculated = true
                    }, label: {
                        CalculateViewModel()
                    })
                }
            }
        }.overlay(alignment: .bottom){
            if resultCalculated && !reset && !closeResult {
                ResultPopUpView(aspectsList: $aspectsList, close: $closeResult, result: result)
            }
        }.ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    ContentView()
}

