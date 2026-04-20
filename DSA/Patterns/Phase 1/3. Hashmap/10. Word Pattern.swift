//
//  10. Word Pattern.swift
//  DSA
//
//  Created by Vijay Kumar on 13/03/26.
//

import Foundation

func wordPattern(_ pattern: String, _ s: String) -> Bool {
    let words = s.split(separator: " ").map { String($0) } // Imprtannt line for swift to have [String] else [String.substring]
    let arr = Array(pattern)
    var userWords: Set<String> = Set() // Imprtannt line
    var dict: [Character: String] = [:]
    
    for i in 0..<arr.count {
        let ch = arr[i]
        
        if let word = dict[ch] {
            if word != words[i] {
                return false
            }
        }else {
            if userWords.contains(words[i]) {
                return false
            }
            dict[ch] = words[i]
            userWords.insert(words[i])
        }
    }
    return true
}
