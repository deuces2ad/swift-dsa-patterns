//
//  5. Group Anagram.swift
//  DSA
//
//  Created by Vijay Kumar on 13/03/26.
//

import Foundation
func groupAnagram( _ strs: [String]) -> [[String]] {
    var dict: [String: [String]] = [:]
    
    for str in strs {
        let arr = Array(str)
        var strIndex = Array(repeating: 0, count: 26)
        for i in 0..<arr.count {
            let index = Int(arr[i].asciiValue! - Character("a").asciiValue!)
            strIndex[index] += 1
        }
        
        var key = ""
        for num in strIndex {
            key = key + "#\(num)"
        }
        
        if let _ = dict[key] {
            dict[key]?.append(str)
        } else {
            dict[key] = [str]
        }
    }
    return Array(dict.values)
}
