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
    @State var showRatePopup: Bool = false
    @State var tappedAspect: Aspects = Aspects(aspectName: "NoAspect")
    @State var tappedAspectPosition: Int = -1
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
                        .font(.header1)
                        .foregroundStyle(.white)
                    
                    Image(systemName: "popcorn.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 36, height: 36)
                        .foregroundColor(.red)
                }
                
                // Body
                ScrollView{
                    
                    // Aspect Buttons List
                    VStack{
                        ForEach(0..<aspectsList.count, id:\.self) { aspect in
                            HStack {
                                
                                // Aspect Button
                                Button(action: {}, label: {
                                    AspectButtonView(aspectName: aspectsList[aspect].name)
                                }).padding(.leading)
                                
                                // Rate Button
                                Button(
                                    action: {
                                        tappedAspect = aspectsList[aspect]
                                        tappedAspectPosition = aspect
                                        showRatePopup = true
    
                                    },
                                    label: {
                                    RateButtonView(rating: $aspectsList[aspect].rate)
                                }).padding(.trailing)
                            }
                        }
                    }
                    
                    VStack{
                        // Rate System Segmented Control
                        Text("Select Your Score System:")
                            .font(.header5)
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
                    }
                    
                    // Calculate Button:
                    Button(action: {
                        for aspect in aspectsList {
                            result += Float(aspect.rate)
                        }
                        result = (result * selectedScoreSystem.scoreSystemMultiplier()) / 100 //10
                        resultCalculated = true
                    }, label: {
                        CalculateButtonView()
                    })
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
        // Result popup
        .overlay(alignment: .bottom){
            if resultCalculated && !reset && !closeResult {
                ResultPopUpView(
                    aspectsList: $aspectsList,
                    close: $closeResult,
                    result: result)
            }
        }.ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    ContentView()
}

