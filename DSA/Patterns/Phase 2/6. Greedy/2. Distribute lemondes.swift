//
//  2. Distribute lemoades.swift
//  DSA
//
//  Created by Vijay Kumar on 25/03/26.
//

import Foundation

func destributeLemon( _ bills: [Int]) -> Bool {
    var fives = 0
    var tens = 0
    
    for bill in bills {
        switch bill {
        case 5:
            fives += 1
        case 10:
            guard fives > 0 else { return false }
            fives -= 1
            tens += 1
        case 20:
            if fives > 0 && tens > 0 {
                tens -= 1
                fives -= 1
            } else if fives >= 3 {
                fives -= 3
            }
        default : break
        }
    }
    return true
}
