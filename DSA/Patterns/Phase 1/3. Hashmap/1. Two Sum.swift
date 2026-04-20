//
//  1. .swift
//  DSA
//
//  Created by Vijay Kumar on 13/03/26.
//

import Foundation
func twoSum(_ arr: [Int], _ target: Int) -> [Int] {
    var dict: [Int: Int] = [:]

    for i in 0..<arr.count {
        let value = target - arr[i]
        if let index = dict[value] {
            return [index, i]
        }
        dict[arr[i]] = i
    }
    return []
}
