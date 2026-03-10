//
//  Group Anagram.swift
//  DSA
//
//  Created by Vijay Kumar on 04/03/26.
//

import Foundation


func groupAnagram( _ words: [String]) -> [[String] ]{
    // sort the the word first
    // match it with map, if found add it, else new key
    var dict: [String: [String]] = [:]
    for word in words {
        let sortedStr = sort_String(word)
        dict[sortedStr, default: []].append(word)
    }
    return Array(dict.values)
}

fileprivate func sort_String(_ s: String) -> String {
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
