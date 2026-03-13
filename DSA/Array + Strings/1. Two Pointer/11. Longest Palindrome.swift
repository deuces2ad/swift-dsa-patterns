//
//  11. Longest Palindrome.swift
//  DSA
//
//  Created by Vijay Kumar on 07/03/26.
//

import Foundation
func longestPalindromeI( _ s: String) -> String {
    let arr = Array(s)
    var maxlength = 0
    var start = 0
    
    for i in 0..<s.count {
        expand(arr: arr, l: i, r: i) // odd
        expand(arr: arr, l: i, r: i + 1) // even
    }

    func expand(arr: [Character], l: Int, r: Int) {
        var left = l
        var right = r
       
        while(left >= 0 && right < arr.count && arr[left] == arr[right]) {
            if right - left + 1 > maxlength {
                start = left
                maxlength = right - left + 1
            }
            left -= 1
            right += 1
        }
    }
    return String(Array(s)[start..<start + maxlength])
}

func longestPalindrome(_ s: String) -> String {

    let arr = Array(s)
    var ans = ""
    
    var left = 0
    
    while left < arr.count {
        
        var right = left
        
        while right < arr.count {
            
            if checkSubString(arr, l: left, r: right) {
                
                if right - left + 1 > ans.count {
                    ans = String(arr[left...right])
                }
            }
            
            right += 1
        }
        
        left += 1
    }
    
    return ans
}

func checkSubString(_ arr: [Character], l: Int, r: Int) -> Bool {
    
    var left = l
    var right = r
    
    while left < right {
        if arr[left] != arr[right] {
            return false
        }
        left += 1
        right -= 1
    }
    
    return true
}
