//
//  Count last Word Chars.swift
//  DSA
//
//  Created by Vijay Kumar on 28/02/26.
//

import Foundation
//https://leetcode.com/problems/length-of-last-word/description/
//s = "Hello World  "
func calcuateTheWordChar(_ s: String) -> Int {

   var count = 0
    var lastIndex = s.endIndex
    
    while( lastIndex > s.startIndex) {
        lastIndex = s.index(before: lastIndex)
        if s[lastIndex] != " " {
            break
        }
    }
    
    while (lastIndex > s.startIndex) {
        if s[lastIndex] != " " {
            count += 1
        } else {
            break
        }
        lastIndex = s.index(before: lastIndex)
    }
    return count
}

func calcuateTheWordCharII(_ s: String) -> Int {

    var lastIndex = s.endIndex
    var count = 0
    while( lastIndex > s.startIndex) {
        lastIndex = s.index(before: lastIndex)
        if s[lastIndex] != " " {
            count += 1
        } else if count > 0 {
            break
        }
    }
    return count
}

func calcuateTheWordCharIII(_ s: String) -> Int {
   var count = 0
    for ch in s.reversed() {
        if ch != " " {
            count += 1
        } else if count > 0 {
            break
        }
    }
    return count
}
