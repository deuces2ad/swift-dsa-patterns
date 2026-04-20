//
//  14. topKFrequent.swift
//  DSA
//
//  Created by Vijay Kumar on 14/03/26.
//

import Foundation
func topKFrequent(_ arr: [Int], _ k: Int) -> [Int] {
    var dict: [Int:Int] = [:]
    for item in arr {
        dict[item, default: 0] += 1
    }
    
    var dictArr = dict.map {($0.key, $0.value)}
    let sortedArr = sort(&dictArr)
    var result: [Int] = []
    
    for i in 0..<k {
        result.append(sortedArr[i].0)
    }
    
    return result
}

   private func sort( _ arr: inout [(Int, Int)]) -> [(Int, Int)] {
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
