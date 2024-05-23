//
//  InfoPopupView.swift
//  CinemaScale
//
//  Created by Joao Filipe Reis Justo da Silva on 22/05/24.
//

import SwiftUI


struct InfoPopupView: View {
    @Binding var isActive: Bool

    var body: some View {
        ZStack{
            
            // Popup background
            Color.backGround
                .ignoresSafeArea(.all)
                .opacity(0.8)
                .onTapGesture {
                    close()
                }

            // Popup body
            ZStack{
                Color.backGround
                
                VStack{
                    Spacer()
                    HStack{
                        Text("What is")
                            .font(.header6)
                            .foregroundStyle(.white)
                        Text("Cinema Scale?")
                            .font(.header6)
                            .foregroundStyle(.white)
                        Image(systemName: "popcorn.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.red)
                            .bold()
                    }.padding()
                    
                    Spacer()
                    Text("Cinema Scale isn’t just another film scorer; it was designed with the aim to prompt you to take a moment to reflect critically on what you just watched.\n\nIt is based on Michael G. Jasper's post on Medium and involves rating different aspects of a movie instead of the movie as a whole. This approach aims to make the act of rating a movie more precise and thoughtful.")
                        .font(.body1)
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.leading)
                    Spacer()
                    Link(destination: URL(string: "https://medium.com/@thecinemascale/10-essential-elements-for-movie-reviews-921230d7fb1e")!) {
                        HStack{
                            Text("M. G. Jasper`s post")
                                .font(.subtitle)
                                .foregroundStyle(.white)
                            Image(systemName: "link.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.letterboxdGreen)
                        }.padding()
                    }
                }.padding()
            }
            .frame(width: 344, height: 328)
            .cornerRadius(20)
            
            // X button
            .overlay{
                HStack{
                    Spacer()
                    VStack{
                        Button(action: {close()}, label: {
                            Image(systemName: "xmark")
                                .font(.header6)
                                .foregroundColor(.letterboxdOrange)
                        }).padding()
                        Spacer()
                    }
                }
            }
        }.opacity(isActive ? 1 : 0)
    }
    
    // Function to close the pop up window
    func close() {
        isActive = false
    }
}


#Preview {
    InfoPopupView(isActive: .constant(true))
}
