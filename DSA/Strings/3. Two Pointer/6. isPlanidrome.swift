//
//  isPlanidrome.swift
//  DSA
//
//  Created by Vijay Kumar on 03/03/26.
//

import Foundation

// https://leetcode.com/problems/valid-palindrome/
func isPalindromeStr(_ s: String) -> Bool {
    
    var filteredStr = ""
    let str = s.lowercased()
    for ch in str {
        if String(ch).wholeMatch(of: /[a-z0-9]/) != nil {
            filteredStr += String(ch)
        }
    }
    var arr = Array(filteredStr)
    let mid = arr.count / 2
    for i in 0..<mid {
       let temp = arr[i]
        arr[i] = arr[arr.count - i - 1]
        arr[arr.count - i - 1] = temp
    }
    let reverseStr = String(arr)
    return reverseStr == filteredStr
}

func isPalindromeStrI(_ s: String) -> Bool {
    var left = s.startIndex
    var right = s.index(before: s.endIndex)
    let pattern = /[a-z0-9]/
    
    while(left < right) {
        let leftChar = s[left].lowercased()
        let rightChr = s[right].lowercased()
        
        if leftChar.wholeMatch(of: pattern) == nil {
            left = s.index(after: left)
        } else if rightChr.wholeMatch(of: pattern) == nil {
            right = s.index(before: right)
        } else if leftChar == rightChr {
            left = s.index(after: left)
            right = s.index(before: right)
        } else {
            return false
        }
    }
  return true
}
