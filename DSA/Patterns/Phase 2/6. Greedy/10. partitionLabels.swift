//
//  10. partitionLabels.swift
//  DSA
//
//  Created by Vijay Kumar on 27/03/26.
//

import Foundation

func partitionLabels(_ s: String) -> [Int] {
    var map: [Character: Int] = [:]
    let arr = Array(s)
    for i in 0..<arr.count {
        map[arr[i], default: 0] = i
    }
    var start = 0
    var end = 0
    var ans: [Int] = []
    for i in 0..<arr.count {
        let ch = arr[i]
        end = max(map[ch]!, end)
        if end == i {
            let length = end - start + 1
            ans.append(length)
            start = i + 1
        }
    }
    return ans
}
