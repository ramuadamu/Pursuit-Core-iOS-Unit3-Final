//
//  Element.swift
//  Elements
//
//  Created by Ramu on 1/4/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

struct Element: Codable {
    let name: String
    let symbol: String
    let number: Int
    let atomic_mass: Float
    let melt: Float?
    let boil: Float?
    let discovery_by: String?
    
    var threeDigitNum : String {
        switch number {
        case 0...9:
            return "00\(number)"
        case 10...99:
            return "0\(number)"
        default:
            return "\(number)"
        
        }
    }
    
}

