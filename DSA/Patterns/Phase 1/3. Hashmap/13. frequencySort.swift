//
//  13. frequencySort.swift
//  DSA
//
//  Created by Vijay Kumar on 13/03/26.
//

import Foundation

func frequencySort(_ s: String) -> String {
    var dict: [Character: Int] = [:]
    for ch in s {
        dict[ch, default: 0] += 1
    }
    var dictArr = dict.map { ($0.key, $0.value) }
    let sortedArr = sortAr(&dictArr)
    var ans = ""
    
    for (key, value) in sortedArr {
        for _ in 0..<value {
            ans.append(key)
        }
    }
    return ans
}

private func sortAr( _ arr: inout ([(Character,Int)])) -> [(Character, Int)] {
    for i in 0..<arr.count {
        for j in i + 1..<arr.count {
            if arr[j].1 > arr[i].1 {
                let temp = arr[i]
                arr[i] = arr[j]
                arr[j] = temp
            }
        }
    }
    return arr
}
