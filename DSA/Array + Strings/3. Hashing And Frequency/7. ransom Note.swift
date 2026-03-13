//
//  7. ransom Note.swift
//  DSA
//
//  Created by Vijay Kumar on 13/03/26.
//

import Foundation

func ransome( ransom: String,magagine: String) -> Bool {
    var rIndexing = Array(repeating: 0, count: 26)
    var mIndeexing = Array(repeating: 0, count: 26)
    
    for ch in ransom {
        let index = Int(ch.asciiValue! - Character("a").asciiValue!)
        rIndexing[index] += 1
    }
    
    for ch in magagine {
        let index = Int(ch.asciiValue! - Character("a").asciiValue!)
        mIndeexing[index] += 1
    }
    
    for i in 0..<26 {
        if rIndexing[i] > mIndeexing[i] {
            return false
        }
    }
    return true
}
