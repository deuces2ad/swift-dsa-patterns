//
//  5. Longes SubString .swift
//  DSA
//
//  Created by Vijay Kumar on 10/03/26.
//

import Foundation

func lengthOfLongestSubstring(_ s: String) -> Int {
    let arr = Array(s)
    var left = 0
    var set = Set<Character>()
    var maxLength = 0
    for i in 0..<arr.count {
        while set.contains(arr[i]) {
            set.remove(arr[left])
            left += 1
        }
        set.insert(arr[i])
        maxLength = max(maxLength, i - left + 1)
    }
    return set.count - left
}
