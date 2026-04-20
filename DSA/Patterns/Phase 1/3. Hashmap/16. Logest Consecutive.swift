//
//  16. Logest Consecutive.swift
//  DSA
//
//  Created by Vijay Kumar on 16/03/26.
//

import Foundation

func longestConsecultive( _ arr: [Int]) -> Int {
    var map: [Int: Bool] = [:]
    var maxLength = Int.min
   
    for num in arr {
        map[num] = false
    }
    
    for i in 0..<arr.count {
        var num = arr[i]
        if map[num] == true { continue }
        map[num] = true
        var length = 1
        
        // moves ahead
        var nextNum = num + 1
        while ( map[nextNum] != nil && map[nextNum] == false) {
            length += 1
            map[nextNum] = true
            nextNum += 1
        }
        
        var prevNum = num - 1
        while (map[nextNum] != nil && map[prevNum] == false) {
            length += 1
            map[prevNum] = true
            prevNum -= 1
        }
        maxLength = max(length, maxLength)
    }
    return maxLength
}
