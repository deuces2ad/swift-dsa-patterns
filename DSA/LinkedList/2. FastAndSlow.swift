//
//  FastAndSlow.swift
//  DSA
//
//  Created by Vijay Kumar on 22/02/26.
//

import Foundation


// Middle of the node
func findMiddleOfTheLinkedList(_ head: Node?) -> Int {
    var slow = head
    var fast = head
    while(fast != nil && fast?.next != nil) {
        slow = slow?.next
        fast = fast?.next?.next
    }
    return slow!.value
}

// Find The cycle of the linkedList -
func cycleOfLinkedListI(_ head: Node?) -> Bool {
    var visted = Set<ObjectIdentifier>()
    var cur = head
    while let node = cur {
        let id = ObjectIdentifier(node)
        if visted.contains(id) {
            return true
        }
        visted.insert(id)
        cur = node.next
    }
    return false
}

func cycleOfLinkedListII( _ head: Node?) -> Bool {
    var slow = head
    var fast = head
    while(fast != nil && fast!.next != nil) {
        slow = slow!.next
        fast = fast!.next!.next
        
        if fast === slow {
           return true
        }
    }
    return false
}
