//
//  9. Remove duplicate from Sorted LL.swift
//  DSA
//
//  Created by Vijay Kumar on 26/02/26.
//

import Foundation
//https://leetcode.com/problems/remove-duplicates-from-sorted-list/

func removeDuplicatedFromSortedLL(_ head: Node?) -> Node? {
    guard let head = head else { return nil }
    var p1: Node? = head
    var p2 = head.next
    
    while (p2 != nil) {
        if p1?.value == p2?.value {
            p1?.next = p1?.next?.next
            p2 = p1?.next // new P2
        } else {
            p1 = p1?.next
            p2 = p2?.next
        }
    }
    return head
}
