//
//  Reorder List.swift
//  DSA
//
//  Created by Vijay Kumar on 05/03/26.
//

import Foundation
// 1->2->3->4
func reorderList( _ head: Node?) -> Node? {
    guard let head else { return nil }
    
    var slow: Node? = head
    var fast: Node? = head
    // Middle of the node
    while (fast != nil && fast?.next != nil) {
        slow = slow?.next
        fast = fast?.next?.next
    }
    var prev: Node?
    var second = slow?.next
    slow?.next = nil
    while(second != nil) {
        let temp = second?.next
        second?.next = prev
        prev = second
        second = temp
    }
    var firstHalf: Node? = head
    var secondHalf: Node? = prev
    while (secondHalf != nil) {
        //store the next elements
        let temp1 = firstHalf?.next
        let temp2 = secondHalf?.next
        firstHalf?.next = secondHalf
        secondHalf?.next = temp1
        // move both ahead
        firstHalf = secondHalf?.next
        secondHalf = temp2
    }
    return head
}
