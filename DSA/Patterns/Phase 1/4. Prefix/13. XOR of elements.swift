//
//  13. XOR of elements.swift
//  DSA
//
//  Created by Vijay Kumar on 17/03/26.
//

import Foundation

func xorQueries(_ arr: [Int], _ queries: [[Int]]) -> [Int] {
    var prefixXOR: [Int] = []
    let firstElement = arr.first!
    prefixXOR.append(firstElement)
    
    for i in 1..<arr.count {
        prefixXOR.append(prefixXOR[i - 1] ^ arr[i])
    }
    var result: [Int] = []
    
    for query in queries {
        let left = query[0]
        let right = query[1]
        
        if left == 0 {
            result.append(prefixXOR[right])
        } else {
            result.append(prefixXOR[right] ^ prefixXOR[left - 1])
        }
    }
    return result
}
