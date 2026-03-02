//
//  14. Swap Node.swift
//  DSA
//
//  Created by Vijay Kumar on 26/02/26.
//

import Foundation
// 1->2->3->4->5
// 1-> 3
func swapNode(_ head: Node?) -> Node? {
    let dummyNode = Node(value: 0)
    var prev: Node? = dummyNode
    prev?.next = head
    
    while(prev?.next != nil && prev?.next?.next != nil) {
        let first = prev?.next
        let second = prev?.next?.next
        
        // swaping
        first?.next = second?.next
        second?.next = first
        prev?.next = second
        // Move prev. ahead
        prev = first
    }
    return dummyNode.next
}
