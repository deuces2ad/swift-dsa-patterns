//
//  7. Remove Nth Node from LL.swift
//  DSA
//
//  Created by Vijay Kumar on 26/02/26.
//

import Foundation

//https://leetcode.com/problems/remove-linked-list-elements/

func removeElements(_ head: Node?, _ val: Int) -> Node? {
    let dummyNode = Node(value: 0)
    dummyNode.next = head
    var prev: Node? = dummyNode
    
    while(prev != nil && prev?.next != nil) {
        if prev?.next?.value == val {
            prev?.next = prev?.next?.next
        } else {
            prev = prev?.next
        }
    }
    return prev?.next
}
