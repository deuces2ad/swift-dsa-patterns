//
//  Heapify.swift
//  DSA
//
//  Created by Vijay Kumar on 18/04/26.
//

import Foundation


class Heapify {
    private var heap: [Int]
    
    init(heap: [Int]) {
        self.heap = heap
    }
    
    func getLeftIndex(_ index: Int) -> Int {
        2*index + 1
    }

    func getRigtIndex(_ index: Int) -> Int {
        2*index + 2
    }
    func parentIndex(_ index: Int) -> Int {
        Int((index - 1) / 2)
    }
    
    func insert( _ value: Int) {
        heap.append(value)
        let lastIndex = heap.count - 1
        heapify(lastIndex)
    }
    
    func heapify(_ lastIndex: Int) {
        var i = lastIndex
        while (i > 0) {
            let parentIndex = parentIndex(i)
            if heap[i] < heap[parentIndex] {
                heap.swapAt(i, parentIndex)
                i = parentIndex
            } else {
                break
            }
        }
        print(heap)
    }
}
