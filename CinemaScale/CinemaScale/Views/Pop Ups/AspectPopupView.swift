//
//  AspectPopupView.swift
//  CinemaScale
//
//  Created by Joao Filipe Reis Justo da Silva on 21/05/24.
//

import SwiftUI

struct AspectPopupView: View {
    @Binding var isActive: Bool
    @Binding var aspect: Aspects

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
                
                VStack(spacing: 8){
                    
                    // Title
                    HStack{
                        Text(aspect.name)
                            .font(.header5)
                            .foregroundColor(.white)
                        
                        aspect.icon
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.red)
                            .bold()
                    }.padding()
                    
                    // Subtitle
                    HStack{
                        Text(aspect.subtitle)
                            .font(.subtitle)
                            .bold()
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                    }
                    
                    // Text
                    ScrollView {
                        VStack(spacing: 8){
                            ForEach(Array(aspect.text.keys), id:\.self){ key in
                                    // Sub aspect
                                    Text("\(key):")
                                        .font(.body1)
                                        .bold()
                                        .foregroundStyle(.white)
                                        .multilineTextAlignment(.leading)
                                    
                                    // Explanation
                                    Text(aspect.text[key] ?? "")
                                        .font(.body1)
                                        .foregroundColor(.white)
                                        .multilineTextAlignment(.leading)
                            }
                        }.padding()
                    }
                }.padding()
            }
            .frame(width: 344, height: 374)
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
    struct AspectPopupPreviewContainer: View {
        @State private var isActive: Bool = true
        @State private var aspect: Aspects = .init(
            aspectName: "Aspect",
            icon: Image(systemName: "popcorn.fill"),
            subtitle: "This is a subtitle",
            text: [
                "Topic 1": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id turpis massa. Maecenas non turpis vulputate, egestas eros ut, ultrices ex. Integer eu sapien eget lorem viverra iaculis. Phasellus risus diam, pulvinar ut felis eget, feugiat iaculis ante. Ut urna libero, tempor ac purus finibus, vulputate bibendum ex. Curabitur tincidunt ex quis congue commodo. Praesent et pellentesque velit, at maximus massa. Aenean sodales massa vestibulum eleifend rutrum. Ut fermentum sollicitudin ante ut sodales. Cras sit amet ipsum porta, congue mi vel, ornare elit. Maecenas velit risus, pellentesque convallis tortor ac, hendrerit faucibus leo. Nullam et magna ex. Praesent justo arcu, laoreet vitae nisl ut, tempor tristique mauris.",
                "Topic 2": "Donec fringilla, orci at mollis consequat, ex turpis semper risus, ac volutpat risus dolor in augue. Aliquam efficitur odio orci, quis accumsan turpis molestie sit amet. Etiam mattis, elit id maximus sollicitudin, risus nisi consequat nunc, eu faucibus libero lorem vitae libero. Cras viverra lobortis mi, in blandit mi egestas rhoncus. Morbi malesuada vitae nulla et facilisis. Duis pellentesque in sapien nec blandit. Sed quis pharetra risus, aliquam venenatis ipsum. Praesent consequat ultricies risus, vitae hendrerit leo pulvinar vitae. In tempus justo leo, eget dapibus arcu porttitor ac. In et aliquam est."])
        
        var body: some View {
            AspectPopupView(isActive: self.$isActive, aspect: self.$aspect)
        }
    }
    
    return AspectPopupPreviewContainer()
}
