//
//  5. Valid Anagram.swift
//  DSA
//
//  Created by Vijay Kumar on 13/03/26.
//

import Foundation

func validAnagram( _ s: String, _ t: String) -> Bool {
    let arrS = Array(s)
    let arrT = Array(t)
    
    var sIndexing = Array(repeating: 0, count: 26)
    var TIndexing = Array(repeating: 0, count: 26)
    
    for i in 0..<arrS.count {
        let index = Int(arrS[i].asciiValue! - Character("a").asciiValue!)
        sIndexing[index] += 1
    }

    for i in 0..<arrT.count {
        let index = Int(arrS[i].asciiValue! - Character("a").asciiValue!)
        TIndexing[index] += 1
    }
    return sIndexing == TIndexing
}
