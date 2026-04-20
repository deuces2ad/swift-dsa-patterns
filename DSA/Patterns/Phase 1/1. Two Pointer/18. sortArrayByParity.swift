//
//  18. sortArrayByParity.swift
//  DSA
//
//  Created by Vijay Kumar on 19/03/26.
//

import Foundation

func sortArrayByParity(_ arr: [Int]) -> [Int] {
       var left = 0
       var right = arr.count - 1
       var arr = arr
       while (left < right) {
           if arr[left] % 2 == 0 {
               left += 1
               continue
           } else if arr[right] % 2 != 0 {
               right -= 1
               continue
           }
           arr.swapAt(left, right)
           left += 1
           right -= 1
       }
       return arr
   }
