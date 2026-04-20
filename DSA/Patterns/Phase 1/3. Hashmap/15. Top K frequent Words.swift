//
//  15. Top K frequent Words.swift
//  DSA
//
//  Created by Vijay Kumar on 14/03/26.
//

import Foundation

func topKFrequent(_ words: [String], _ k: Int) -> [String] {
    var dict : [String: Int] = [:]
    for word in words {
        dict[word, default: 0] += 1
    }
    
    var dictArr = dict.map { ($0.key, $0.value)}
    let sortedArr = sort(&dictArr)
    var result: [String] = []
    for i in 0..<k {
        result.append(sortedArr[i].0)
    }
    return result
}

private func sort ( _ arr: inout [(String, Int)]) -> [(String,Int)] {
    for i in 0..<arr.count {
        for j in i + 1..<arr.count {
            if arr[j].1 > arr[i].1 || (arr[j].1 == arr[i].1 && arr[j].0 < arr[i].0) {
                let temp = arr[j]
                arr[j] = arr[i]
                arr[i] = temp
            }
        }
    }
    return arr
}
