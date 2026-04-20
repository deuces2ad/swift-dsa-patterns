//
//  8. 1768. Merge Strings Alternately.swift
//  DSA
//
//  Created by Vijay Kumar on 07/03/26.
//

import Foundation
func mergeAlternately(_ word1: String, _ word2: String) -> String {
    var left = 0
    var right = 0
    var ans: [Character] = []

    let w1 = Array(word1)
    let w2 = Array(word2)

    while (left < w1.count || right < w2.count) {
        if left < w1.count {
            let ch = w1[left]
            ans.append(ch)
            left += 1
        }
        
        if right < w2.count {
            let ch = w2[right]
            ans.append(ch)
            right += 1
        }
    }
    return String(ans)
}
