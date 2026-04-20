//
//  9. Is Isomorphic.swift
//  DSA
//
//  Created by Vijay Kumar on 13/03/26.
//

import Foundation

func isIsomorphic( _ s: String, _ t: String) -> Bool {
    var mapS: [Character: Character] = [:]
    var mapT: [Character: Character] = [:]
    
    let arrS = Array(s)
    let arrT = Array(t)
    
    for i in 0..<s.count {
        let val1 = arrS[i]
        let val2 = arrT[i]
        
        if let _ = mapS[val1] {
            if mapS[val1] != val2 {
                return false
            }
        }
        
        if let _ = mapT[val2] {
            if mapT[val2] != val1 {
                return false
            }
        }
        mapS[val1] = val2
        mapT[val2] = val1
    }
    return true
}
