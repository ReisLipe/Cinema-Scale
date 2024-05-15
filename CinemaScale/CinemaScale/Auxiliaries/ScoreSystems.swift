//
//  ScoreSystems.swift
//  CinemaScale
//
//  Created by Joao Filipe Reis Justo da Silva on 11/05/24.
//

import Foundation

enum ScoreSystems: String, CaseIterable{
    case five = "5/5"
    case ten = "10/10"
    case hundred = "100/100"
    
    func scoreSystemMultiplier() -> Float{
        var result: Float = 0
        
        switch self {
        case .five:
            result = 1.0
        case .ten:
            result = 2.0
        case .hundred:
            result = 20.0
        }
        
        return result
    }
}
