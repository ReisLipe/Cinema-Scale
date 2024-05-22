//
//  AspectListView.swift
//  CinemaScale
//
//  Created by Joao Filipe Reis Justo da Silva on 16/05/24.
//


import SwiftUI


struct AspectListView: View {
    @Binding var aspectsList: [Aspects]
    @Binding var tappedAspect: Aspects
    @Binding var showRatePopup: Bool
    @Binding var showAspectPopup: Bool
    
    var body: some View {
        VStack{
            ForEach(0..<aspectsList.count, id:\.self) { aspect in
                HStack {
                    
                    // Aspect Button
                    Button(
                        action: {
                            tappedAspect = aspectsList[aspect]
                            showAspectPopup = true
                        },
                        label: {
                        AspectButtonView(aspectName: aspectsList[aspect].name)
                    }).padding(.leading)
                    
                    // Rate Button
                    Button(
                        action: {
                            tappedAspect = aspectsList[aspect]
                            showRatePopup = true
                        },
                        label: {
                        RateButtonView(aspect: $aspectsList[aspect])
                    }).padding(.trailing)
                }
            }
        }
    }
}
