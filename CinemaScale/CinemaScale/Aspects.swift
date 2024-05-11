//
//  Aspects.swift
//  CinemaScale
//
//  Created by Joao Filipe Reis Justo da Silva on 11/05/24.
//

import Foundation

struct Aspects {
    let aspectName: String
    let aspectRate: Int = 0
    
    init(aspectName: String) {
        self.aspectName = aspectName
    }
}

let aspectsList: [Aspects] = [
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
