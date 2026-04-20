//
//  9. Minimum SubString.swift
//  DSA
//
//  Created by Vijay Kumar on 11/03/26.
//

import Foundation

func minWindow(_ s: String, _ t: String) -> String {
    var mapS = Array(repeating: 0, count: 128)
    var mapsT = Array(repeating: 0, count: 128)
    

    var left = 0
    var start = 0
    let arrS = Array(s)
    var minLength = Int.max
    for ch in t {
        let index = Int(ch.asciiValue!)
        mapsT[index] += 1
    }
    
    for i in 0..<s.count {
        let index = Int(arrS[i].asciiValue!)
        mapS[index] += 1
        
        while checkIfContainsAllElement(mapS, mapsT) {
            if (i - left + 1) < minLength {
                minLength = i - left + 1
                start = left
            }
            let index = Int(arrS[left].asciiValue!)
            mapS[index] -= 1
            left += 1
        }
    }
    if minLength == Int.max {
        return ""
    }
    return String(Array(arrS[start..<start + minLength]))
}

private func checkIfContainsAllElement( _ mapS: [Int], _ mapsT: [Int]) -> Bool {
    for i in 0..<mapsT.count {
        if mapsT[i] > mapS[i] {
            return false
        }
    }
    return true
}

class Solution {
    func minWindow(_ s: String, _ t: String) -> String {
        var sArray = Array(s)
        var have: [Character: Int] = [:]
        var startIndex = 0
        var endIndex = Int.max
        var need: [Character: Int] = [:]

        for char in t {
            have[char, default: 0] += 1
        }
        var requiredCount = have.keys.count
        var count = 0
        var left = 0
        var right = 0
        
        while right < sArray.count {
            let rightChar = sArray[right]
            need[rightChar, default: 0] += 1

            if let needCount = need[rightChar], let haveCount = have[rightChar] , needCount == haveCount {
                count += 1
            }
            while count >= requiredCount {
                if right - left + 1 < endIndex {
                    endIndex = right - left + 1
                    startIndex = left
                }
                let leftChar = sArray[left]
                need[leftChar, default: 0] -= 1
                left += 1
                if let needCount = need[leftChar], let haveCount = have[leftChar], needCount < haveCount {
                    count -= 1
                }
            }
            right += 1
        }

        return endIndex == Int.max ? "" : String(sArray[startIndex..<(startIndex + endIndex)])
    }
}
