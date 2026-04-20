//
//  4. Cycle detection.swift
//  DSA
//
//  Created by Vijay Kumar on 26/02/26.
//

import Foundation
 //https://leetcode.com/problems/linked-list-cycle/

func hasCycle(_ head: Node?) -> Bool  {
    var slow = head
    var fast = head
    
    while(fast != nil && fast?.next?.next != nil) {
        slow = slow?.next
        fast = fast?.next?.next
        if slow === fast {
            return true
        }
    }
    return false
}

// TC: O(n)
// SC: O(1)
