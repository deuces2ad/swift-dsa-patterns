//
//  20. isLongPressedName.swift
//  DSA
//
//  Created by Vijay Kumar on 19/03/26.
//

import Foundation

func isLongPressedName(_ name: String, _ typed: String) -> Bool {
    var left = 0
    var right = 0
    let arrN = Array(name)
    let arrT = Array(typed)
    while (right < typed.count) {
        if left < arrN.count && arrN[left] == arrT[right] {
            left += 1
            right += 1
        } else if right > 0 && arrT[right] == arrT[right - 1] {
            right += 1
        } else {
            return false
        }
    }
    return left == name.count
}
