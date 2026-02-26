//
//  8. Remove nth Node from Tail.swift
//  DSA
//
//  Created by Vijay Kumar on 26/02/26.
//

import Foundation

// -2 pass
func removeNthFromEnd(_ head: Node?, _ n: Int) -> Node? {
    // we need to have the dummy node
    let dummyNode = Node(value: 0)
    var dummy: Node? = dummyNode
    dummy?.next = head
    var curr = head
    // calcaulate size of the list
    var size = 0
    while(curr != nil) {
        curr = curr?.next
        size += 1
    }
    // find out the position of the node b4 the node to be deleted
    let nodeToBeDeleted = (size - n)
    var prev = dummy
    for _ in 0..<nodeToBeDeleted {
        prev = prev?.next
    }
    prev?.next = prev?.next?.next
    // return the updated head
    return dummy?.next
}

// Single pass
func removeNthFromEndII(_ head: Node?, _ n: Int) -> Node? {
   // create dummyNode
    let node = Node(value: 0)
    var dummyNode: Node? = node
    dummyNode?.next = head
    // p1 and p2 pointer
    var p1 = dummyNode
    var p2 = dummyNode
    // move first pinter by n distance
    for _ in 0..<n {
        p2 = p2?.next
    }
    // then move both poiter same one point
    while(p2 != nil || p2?.next != nil) {
        p1 = p1?.next
        p2 = p2?.next
    }
    p1?.next = p1?.next?.next
    // delete the next node
    return dummyNode?.next
}
