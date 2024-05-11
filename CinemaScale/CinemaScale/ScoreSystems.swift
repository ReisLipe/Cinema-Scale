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
    
    func scoreCalculator(rates: [Int]) -> Float{
        var result: Float = 0
        var average: Float = 0
        
        for rate in rates {
            average += Float(rate)
        }
        average = average / 10
        
        switch self {
        case .five:
            result = average
        case .ten:
            result = average * 2
        case .hundred:
            result = average * 20
        }
        
        return result
    }
}
