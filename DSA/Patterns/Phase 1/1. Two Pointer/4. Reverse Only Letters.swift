//
//  4. Reverse Only Letters.swift
//  DSA
//
//  Created by Vijay Kumar on 06/03/26.
//

import Foundation

func reverseOnlyLetters( _ s: String) -> String {
    var left = 0
    var right = s.count - 1
    var arr = Array(s)
    while(left < right) {
        if !arr[left].isLetter {
            left += 1
        } else if !arr[right].isLetter {
            right -= 1
        } else if arr[left].isLetter && arr[right].isLetter   {
            let temp = arr[left]
            arr[left] = arr[right]
            arr[right] = temp
            left += 1
            right -= 1
        }
    }
    return String(arr)
}
