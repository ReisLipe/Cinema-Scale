//
//  Aspects.swift
//  CinemaScale
//
//  Created by Joao Filipe Reis Justo da Silva on 11/05/24.
//

import SwiftUI

struct Aspects {
    let name: String
    let icon: Image
    let subtitle: String
    let text: [String: String]
    var rate: Float = 0
    
    init(aspectName: String, icon: Image, subtitle: String, text: [String: String]) {
        self.name = aspectName
        self.icon = icon
        self.subtitle = subtitle
        self.text = text
    }
}
