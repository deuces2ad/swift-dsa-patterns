//
//  7. backspaceCompare.swift
//  DSA
//
//  Created by Vijay Kumar on 07/03/26.
//

import Foundation
//s = "ab#c", t = "ad#c"

func backspaceCompare(_ s: String, _ t: String) -> Bool {
    resultString(s) == resultString(t)
}

private func resultString( _ s : String) -> String {
    var left = 0
    var ans: [Character] = []
    
    for ch in s {
        if ch == "#" {
            if !ans.isEmpty {
                ans.removeLast()
            }
        } else {
            ans.append(ch)
        }
    }
   
    return String(ans)
}
func backspaceCompareI(_ s: String, _ t: String) -> Bool {
    // convert them into array
    let arr1 = Array(s)
    let arr2 = Array(t)
    
    var left = arr1.count - 1
    var right = arr2.count - 1
    
    var skip1 = 0
    var skip2 = 0
    
    while ( left >= 0 || right >= 0) {
        
        while (left >= 0) {
            if arr1[left] == "#" {
                skip1 += 1
                left -= 1
            } else if skip1 > 0 {
                left -= 1
                skip1 -= 1
            } else {
                break
            }
        }
        
        while (right >= 0) {
            if arr2[right] == "#" {
                skip2 += 1
                right -= 1
            } else if skip2 > 0 {
                skip2 -= 1
                right -= 1
            } else {
                 break
            }
        }
        if left >= 0 && right >= 0 && arr1[left] != arr2[right] {
            return false
        }
        
        if (left >= 0) != (right >= 0) { // checks if any sentence is empty or not else return false
            return false
        }
        left -= 1
        right -= 1
    }
    return true
}
