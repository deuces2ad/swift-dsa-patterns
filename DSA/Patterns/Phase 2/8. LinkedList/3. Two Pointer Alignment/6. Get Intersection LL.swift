//
//  6. Get Intersection LL.swift
//  DSA
//
//  Created by Vijay Kumar on 26/02/26.
//

import Foundation

//https://leetcode.com/problems/intersection-of-two-linked-lists/
func getIntersectionNodeI(_ headA: Node?, _ headB: Node?) -> Node? {
    var p1 = headA
    var p2 = headB
    
    while(p1 !== p2) {
        p1 = p1 == nil ? headB : p1?.next
        p2 = p2 == nil ? headA : p2?.next
    }
    return p1
}


func getIntersectionNode(_ headA: Node?, _ headB: Node?) -> Node? {
    var hasVisited = Set<ObjectIdentifier>()
    var first = headA
    while (first != nil) {
        hasVisited.insert(ObjectIdentifier(first!))
        first = first?.next
    }
    var second = headB
    while (second != nil) {
        if hasVisited.contains(ObjectIdentifier(second!)) {
            return second
        }
        second = second?.next
    }
    return nil
}
