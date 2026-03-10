//
//  6. Sentence similarty.swift
//  DSA
//
//  Created by Vijay Kumar on 06/03/26.
//

import Foundation

func areSentencesSimilar(_ sentence1: String, _ sentence2: String) -> Bool {
    // First convert them into collection of words
    let w1 = sentence1.split(separator: " ")
    let w2 = sentence2.split(separator: " ")
    // Get small and large
    let small = w1.count < w2.count ? w1 : w2
    let large = w1.count < w2.count ? w2 : w1
    // count first same prifix and same suffix from ends
    var left = 0 // count prefix
    var right = 0 // count suffix
    
    while (left < small.count && small[left] == large[left]) {
        left += 1
    }
    
    while (right < small.count - left &&
           small[small.count - 1 - right] == large[large.count - 1 - right]) {
        right += 1
    }
    // check if left and right addintion get equivalent to short
    return left + right == small.count
}
