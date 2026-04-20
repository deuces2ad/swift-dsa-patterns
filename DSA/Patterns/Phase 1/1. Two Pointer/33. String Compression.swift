//
//  33. String Compression.swift
//  DSA
//
//  Created by Vijay Kumar on 12/04/26.
//

import Foundation
func stringCompression( _ arr: inout [Character]) -> Int {
   var i = 0
    var result: [Character] = []
    while (i < arr.count) {
        let current = arr[i]
        var count = 0
        while (i < arr.count && arr[i] == current) {
            count += 1
            i += 1
        }
        result.append(current)
        if count > 1 {
            for digit in String(count) {
                result.append(digit)
            }
        }
    }
    return result.count
}
