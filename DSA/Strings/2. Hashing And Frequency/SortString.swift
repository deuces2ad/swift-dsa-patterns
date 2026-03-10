//
//  SortString.swift
//  DSA
//
//  Created by Vijay Kumar on 04/03/26.
//

import Foundation

func sortString( _ s: String) -> String {
    var arr = Array(s)
    
    for i in 0..<arr.count {
        for j in i + 1..<arr.count {
            if arr[i] > arr[j] {
                let temp = arr[i]
                arr[i] = arr[j]
                arr[j] = temp
            }
        }
    }
    return String(arr)
}
