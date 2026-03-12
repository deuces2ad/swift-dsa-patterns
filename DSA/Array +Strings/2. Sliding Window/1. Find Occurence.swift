//
//  1. Find Occurence.swift
//  DSA
//
//  Created by Vijay Kumar on 10/03/26.
//

import Foundation

func strStr(_ haystack: String, _ needle: String) -> Int {
    let M = haystack.count
    let N = needle.count
    
    var left = 0
    let arr = Array(haystack)
 
    for i in 0..<M {
        
        if i >= N {
            left += 1
        }
        
        if i - left + 1 == N {
            if String(arr[left...i]) == needle {
                return left
            }
        }
    }
    return -1
}
