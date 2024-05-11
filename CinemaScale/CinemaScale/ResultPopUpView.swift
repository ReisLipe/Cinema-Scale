//
//  ResultPopUpView.swift
//  CinemaScale
//
//  Created by Joao Filipe Reis Justo da Silva on 11/05/24.
//

import SwiftUI

struct ResultPopUpView: View {
    let result: Float
    
    var body: some View {
        let formatedResult: String = String(format: "%.1f", result)
        
        ZStack {
            Rectangle()
                .frame(width: 393, height: 228)
                .foregroundColor(Color(red: 32/255, green: 40/255, blue: 48/255))
            VStack{
                Text("Total Score: \(formatedResult)")
                    .font(.system(size: 35, weight: .bold, design: .rounded))
                    .foregroundStyle(.white)
                    .padding()
                // todo: need to move this text to the top of rectangle
            }
        }
    }
}

#Preview {
    ResultPopUpView(result: 0.0)
}
