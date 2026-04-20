//
//  6. Searc Matrix II.swift
//  DSA
//
//  Created by Vijay Kumar on 31/03/26.
//

import Foundation

func search_matrixII( _ matrix:[[Int]], _ target: Int) -> Bool {
    var row = 0
    var col = matrix[0].count - 1
    while( row < matrix.count && col >= 0) {
        let curr = matrix[row][col]
        if curr == target {
            return true
        } else if curr < target {
            row += 1
        } else {
            col -= 1
        }
    }
    return false
}
