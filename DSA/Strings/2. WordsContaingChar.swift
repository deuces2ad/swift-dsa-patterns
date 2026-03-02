//
//  WordsContaingChar.swift
//  DSA
//
//  Created by Vijay Kumar on 01/03/26.
//

import Foundation
func findWordsContaining( _ words: [String], _ x: Character) -> [Int] {
    var ans: [Int] = []
    var length = words.count - 1
    for i in 0...length {
        for ch in words[i] {
            if ch == x {
                ans.append(i)
                break
            }
        }
    }
    return ans
}
