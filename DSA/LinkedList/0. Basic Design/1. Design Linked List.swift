//
//  Design Linked List.swift
//  DSA
//
//  Created by Vijay Kumar on 21/02/26.
//

import Foundation
class LinkedList {
    var head: Node?
    var size: Int
    
    init() {
        head = nil
        size = 0
    }

    func addAtHead(_ value: Int) {
     let newNode = Node(value: value)
        newNode.next = head
        head = newNode
        size += 1
    }

    func addAtTail(_ value: Int) {
        let newNode = Node(value: value)
        if head != nil {
            var current = head
            while(current?.next != nil) {
                current = current?.next
            }
            current?.next = newNode
        } else {
            head = newNode
        }
        size += 1
    }
    
    func get(_ index: Int) -> Int {
       var ans = -1
        guard size >= 1, index < size else { return ans }
        var cur = head
        for _ in 0..<index {
            cur = cur?.next
        }
        ans = cur!.value
        return ans
    }
    
    func insertAt(_ index: Int, value: Int) {
        guard size >= 1, index < size else { return }
        let newNode = Node(value: value)
        if index == 0 {
            newNode.next = head
            head = newNode
            size += 1
            return
        }

        var cur = head
        for _ in 0..<(index - 1) {
            cur = cur?.next
        }
        newNode.next = cur?.next
        cur?.next = newNode
        size += 1
    }

    func delete(_ index: Int) {
        guard size >= 1, index < size else { return }
        
        if index == 0 {
            head = head?.next
            size -= 1
            return
        }
        
        var cur = head
        for _ in 0..<(index - 1 ){
            cur = cur?.next
        }
        cur?.next = cur?.next?.next
        size -= 1
    }
}
class Node {
     var value: Int
     var next: Node?

    init(value: Int, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}
