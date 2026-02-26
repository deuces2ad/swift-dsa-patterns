//
//  5. Palindrome in LL.swift
//  DSA
//
//  Created by Vijay Kumar on 26/02/26.
//

import Foundation
// https://leetcode.com/problems/palindrome-linked-list/description/

func isPalindrome(_ head: Node?) -> Bool {
    var slow = head
    var fast = head
// retrive the mid point
    while (fast != nil && fast?.next != nil) {
        slow = slow?.next
        fast = fast?.next?.next
    }
    var prev: Node?
    var firstHalf = head
    // get second half reversed
    while(slow != nil) {
        let temp = slow?.next
        slow?.next = prev
        prev = slow
        slow = temp
    }
    while (prev != nil) {
        if prev?.value != firstHalf?.value {
            return false
        }
        prev = prev?.next
        firstHalf = firstHalf?.next
    }
    return true
}
