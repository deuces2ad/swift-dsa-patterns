//
//  11. Add Two Numbers.swift
//  DSA
//
//  Created by Vijay Kumar on 26/02/26.
//

import Foundation
//https://leetcode.com/problems/add-two-numbers/description/

func addTwoNumbers(_ l1: Node?, _ l2: Node?) -> Node? {
    var p1 = l1
    var p2 = l2
    var sum = 0
    var carry = 0
    let node = Node(value: 0)
    var curr = node
    
    while(p1 != nil || p2 != nil || carry != 0) {
        let x = p1?.value ?? 0
        let y = p2?.value ?? 0
        sum = x + y + carry
        carry = Int(sum / 10)
        let newDigit = sum % 10
        let node = Node(value: newDigit)
        curr.next = node
        curr = curr.next!
        p1 = p1?.next
        p2 = p2?.next
    }
    return node.next
}
