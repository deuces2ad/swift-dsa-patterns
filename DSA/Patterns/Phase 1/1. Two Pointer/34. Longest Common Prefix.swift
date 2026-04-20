//
//  34. Logest Common Prefix.swift
//  DSA
//
//  Created by Vijay Kumar on 12/04/26.
//

import Foundation
func longestCommonPrefix( _ strs: [String]) -> String {
    let first = strs.first!
    let arr = Array(first)
    
    for i in 0..<first.count {
        let current = arr[i]
        for str in strs {
            if i >= str.count || current != Array(str)[i] {
                return String(arr[...i])
            }
        }
    }
    return first
}
