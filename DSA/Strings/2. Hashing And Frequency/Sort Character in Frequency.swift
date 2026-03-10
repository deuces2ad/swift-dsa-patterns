//
//  Sort Character in Frequency.swift
//  DSA
//
//  Created by Vijay Kumar on 04/03/26.
//

import Foundation

func frequencySort(_ s: String) -> String {
    var dict: [Character: Int] = [:]
    var ans = ""
    for ch in s {
        dict[ch, default: 0] += 1
    }
    var sorteded = Array(dict).sorted { $0 > $1 }
    for (key, val) in sorteded {
        for _ in 0..<val {
            ans.append(key)
        }
    }
    return ans
}
