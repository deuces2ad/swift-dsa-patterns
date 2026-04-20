//
//  12. Merge 02 Sorted LL.swift
//  DSA
//
//  Created by Vijay Kumar on 26/02/26.
//

import Foundation

func mergeTwoLists(_ list1: Node?, _ list2: Node?) -> Node? {
    // will start 02 pointer from both heads
    var p1 = list1
    var p2 = list2
    let dummyNode = Node(value: 0)
    var curr: Node? = dummyNode
    // compare them, move it respective point
    while(p1 != nil && p2 != nil) {
        if p1!.value <= p2!.value {
            curr?.next = p1
            p1 = p1?.next
        } else {
            curr?.next = p2
            p2 = p2?.next
        }
        curr = curr?.next // update curr to next
    }

    // attach the remainng one
    curr?.next = p1 != nil ? p1 : p2
    return dummyNode.next
    
}
