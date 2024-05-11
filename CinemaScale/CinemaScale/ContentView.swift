//
//  ContentView.swift
//  CinemaScale
//
//  Created by Joao Filipe Reis Justo da Silva on 11/05/24.
//

import SwiftUI

struct ContentView: View {
    @State var selectedScoreSystem: ScoreSystems = .five
    @State var result: Float = 0
    @State var resultCalculated: Bool = false
    
    var body: some View {
        ZStack{
            
            // Background Color
            Color(red: 32/255, green: 40/255, blue: 48/255)
                .ignoresSafeArea(.all)
            
            // App
            VStack{
                
                // Header
                HStack{
                    Text("Cinema Scale")
                        .font(.system(size: 35, weight: .bold, design: .rounded))
                        .foregroundStyle(.white)
                    
                    //todo:  need to improve the logo
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
                        ForEach(Array(aspectsList.enumerated()), id: \.offset) { aspect in
                            HStack {
                                
                                // Aspect Button
                                Button(action: {
                                    print("\(aspect.element.aspectName) clicked")
                                }, label: {
                                    AspectButtonViewModel(aspectName: aspect.element.aspectName)
                                }).padding(.leading)
                                
                                // Rate Button
                                Button(action: {
                                    print("\(aspect.element.aspectName) rate clicked")
                                }, label: {
                                    RateButtonViewModel(rating: aspect.element.aspectRate)
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
                            //todo: need to change text color
                        }
                    }
                    .pickerStyle(.segmented)
                    .background(Color(red: 255/255, green: 229/255, blue: 236/255))
                    .colorMultiply(Color(red: 255/255, green: 128/255, blue: 0/255))
                    .cornerRadius(8)
                    .padding()
                    
                    // Calculate Button:
                    Button(action: {
                        // todo: Calculates the average
                        resultCalculated = true
                    }, label: {
                        CalculateViewModel()
                    })
                }
            }
        }.overlay(alignment: .bottom){
            if resultCalculated {
                ResultPopUpView(result: 0)
            }
        }.ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    ContentView()
}

