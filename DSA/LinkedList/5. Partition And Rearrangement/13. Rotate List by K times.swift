//
//  13. Rotate List by K times.swift
//  DSA
//
//  Created by Vijay Kumar on 26/02/26.
//

import Foundation

//https://leetcode.com/problems/rotate-list/description/
func rotateRight(_ head: Node?, _ k: Int) -> Node? {
    guard let head = head else { return nil }
    
    var size = 0
    var curr: Node? = head
    while( curr !=  nil) {
        size += 1
        curr = curr?.next
    }
    let rotation = k % size
    guard rotation != 0 else { return head }
    
    var p1 = head
    var p2 = head
    for _ in 0..<rotation {
        p2 = p2.next!
    }
    while (p2.next != nil) {
        p1 = p1.next!
        p2 = p2.next!
    }
    
    let newHead = p1.next
    let originalHead = head
    p1.next = nil
    p2.next = originalHead
    return newHead
}
