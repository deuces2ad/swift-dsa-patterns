//
//  ReverseLL.swift
//  DSA
//
//  Created by Vijay Kumar on 26/02/26.
//

import Foundation

//https://leetcode.com/problems/reverse-linked-list/description/

func reverseLinked( _ head: Node?) -> Node? {
    var prev: Node?
    var curr: Node? = head
    while(curr != nil) {
        let temp = curr?.next
        curr?.next = prev
        prev = curr
        curr = temp
    }
    return prev
}

//TC: O(n)
// SC: O(1)
