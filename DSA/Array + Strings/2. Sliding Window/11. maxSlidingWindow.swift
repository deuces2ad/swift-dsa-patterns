//
//  11. maxSlidingWindow.swift
//  DSA
//
//  Created by Vijay Kumar on 12/03/26.
//

import Foundation

func maxSlidingWindow(_ arr: [Int], _ k: Int) -> [Int] {
    var deque: [Int] = []
    var ans: [Int] = []
    var i = 0
    var j = 0
    
    while (j < arr.count) {
        while ( !deque.isEmpty && arr[j] > deque[deque.count - 1]) {
            deque.removeLast()
        }
        deque.append(arr[j])
        if j >= k - 1 {
            ans.append(deque.first!)
            if arr[i] == deque.first! {
                deque.removeFirst()
            }
            i += 1
        }
        j += 1
    }
    return ans
}
