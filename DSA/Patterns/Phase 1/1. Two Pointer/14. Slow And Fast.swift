//
//  14. Slow And Fast.swift
//  DSA
//
//  Created by Vijay Kumar on 17/03/26.
//

import Foundation

func findDuplicate( _ arr: [Int]) -> Int {
    var slow = arr[0]
    var fast = arr[0]
    
    repeat {
        slow = arr[slow]
        fast = arr[arr[fast]]
    } while ( slow != fast)
    
    slow = arr[0]
    
    while (slow != fast) {
        slow = arr[slow]
        fast = arr[fast]
    }
    return slow
}
