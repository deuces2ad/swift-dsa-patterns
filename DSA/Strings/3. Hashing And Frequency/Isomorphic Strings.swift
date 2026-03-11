//
//  Isomorphic Strings.swift
//  DSA
//
//  Created by Vijay Kumar on 04/03/26.
//

import Foundation

func isIsomorphic(_ s: String, _ t: String) -> Bool {
    var arr1 = Array(s)
    var arr2 = Array(t)
    var dict: [Character: Character] = [:]
    var dict2: [Character: Character] = [:]
    
    for i in 0..<arr1.count {
        let val1 = arr1[i]
        let val2 = arr2[i]
        
        if let _ = dict[val1] {
            if dict[val1] != val2 {
                return false
            }
        }
        if let _ = dict2[val2] {
            if dict2[val2] != val1 {
                return false
            }
        }
        dict[val1] = val2
        dict2[val2] = val1
    }
    return true
}
