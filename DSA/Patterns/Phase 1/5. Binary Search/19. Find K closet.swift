//
//  19. Find K closet.swift
//  DSA
//
//  Created by Vijay Kumar on 05/04/26.
//

import Foundation
func findKclosed( _ arr: [Int], k: Int, x: Int) -> [Int] {
    var left = 0
    var right = arr.count - k
    
    while(left < right) {
        let mid = left + (right - left) / 2
        if x - arr[mid] > arr[mid + k] - x {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    return Array(arr[left..<left + k])
}

func findKclosedI( _ arr: [Int], k: Int, x: Int) -> [Int] {
    var left = 0
    var right = arr.count - 1
    while(right - left + 1 > k) {
        let leftDiff = abs(x - arr[left])
        let rightDiff = abs(arr[right] - x)
        
        if leftDiff > rightDiff {
            left += 1
        } else {
            right -= 1
        }
    }
    return Array(arr[left...right])
}

