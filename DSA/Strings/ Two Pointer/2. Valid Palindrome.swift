//
//  2. Palindrome.swift
//  DSA
//
//  Created by Vijay Kumar on 06/03/26.
//

import Foundation

func isPalindrome( s: String) -> Bool {
    var arr = Array(s)
    var left = 0
    var right = arr.count - 1
    while (left < right) {
        if arr[left] != arr[right] {
            return false
        }
        left += 1
        right -= 1
    }
    return true
}

// TC: o(N)
// Sc: o(n)

func validPalindrome( s: String) -> Bool {
    var arr = Array(s)
    var left = 0
    var right = s.count - 1
    
    while (left < right) {
        let leftCh = arr[left]
        let rightCh = arr[right]
        
        if !leftCh.isLetter && !leftCh.isNumber {
            left += 1
        } else if !rightCh.isLetter && !rightCh.isNumber{
            right -= 1
        } else if leftCh.lowercased() != rightCh.lowercased() {
            return false
        } else {
            left += 1
            right -= 1
        }
    }
    return true
}
