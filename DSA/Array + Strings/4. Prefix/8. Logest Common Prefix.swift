//
//  8. Logest Common Prefix.swift
//  DSA
//
//  Created by Vijay Kumar on 03/03/26.
//

import Foundation
// https://leetcode.com/problems/longest-common-prefix/
func longestCommonPrefix(_ strs: [String]) -> String {
    let strSample = strs.first!.utf8
    if strs.isEmpty { return "" }
    let first = strs[0]
    for i in 0..<first.count {
        let index = first.index(first.startIndex, offsetBy: i)
        let ch = first[index]
        for str in strs {
            if i >= str.count || str[str.index(str.startIndex, offsetBy: i)] != ch {
                return String(str[..<index])
            }
        }
    }
    return first
}
