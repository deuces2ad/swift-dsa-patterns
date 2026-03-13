//
//  File.swift
//  DSA
//
//  Created by Vijay Kumar on 13/03/26.
//

import Foundation

func containsDuplicate(_ arr: [Int]) -> Bool {
    var dict : [Int: Int] = [:]
    for i in 0..<arr.count {
        if let value = dict[arr[i]], 1 < value {
            return true
        }
        dict[arr[i], default: 0] += 1
    }
    return false
}

