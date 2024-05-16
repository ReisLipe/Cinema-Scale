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
    var rate: Int = 0
    
    init(aspectName: String, icon: Image) {
        self.name = aspectName
        self.icon = icon
    }
}
