//
//  15. Odd even .swift
//  DSA
//
//  Created by Vijay Kumar on 26/02/26.
//

import Foundation

// 1->2->3->4->5
func swapOddEven(_ head: Node?) -> Node? {
    var odd = head
    var even = head?.next
    var evenHead = even
    
    while(odd?.next != nil && even?.next != nil) {
        odd?.next = odd?.next?.next
        even?.next = even?.next?.next
        odd = odd?.next
        even = even?.next
    }
    odd?.next = evenHead
    return head
}
