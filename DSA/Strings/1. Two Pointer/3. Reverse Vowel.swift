//
//  3. Reverse Vowel.swift
//  DSA
//
//  Created by Vijay Kumar on 06/03/26.
//

import Foundation

func reverseVowels( _ s: String) -> String {
    var left = 0
    var right = s.count - 1
    var arr = Array(s)
    while (left < right) {
        if !isVowel(arr[left]) {
            left += 1
        } else if !isVowel(arr[right]) {
            right -= 1
        } else {
            let temp = arr[left]
            arr[left] = arr[right]
            arr[right] = temp
            left += 1
            right -= 1
        }
    }
    return String(arr)
}

 func isVowel(_  s: Character) -> Bool {
    switch s {
    case "a", "e", "i", "o", "u", "A", "E", "I", "O", "U":
        return true
    default:
        return false
    }
}
