    //
    //  12. Koko Eating banana.swift
    //  DSA
    //
    //  Created by Vijay Kumar on 03/04/26.
    //

    import Foundation

    func kokoEatingBanana( _ arr: [Int], h: Int) -> Int {
        var minSpeed = 1
        var maxSpeed = 0
        for num in arr {
            maxSpeed = max(maxSpeed,num)
        }
        
        while(minSpeed < maxSpeed) {
            let mid = minSpeed + (maxSpeed - minSpeed) / 2
            if canEat(arr,h,mid) {
                maxSpeed = mid
            } else {
                minSpeed = mid + 1
            }
        }
        return minSpeed
    }
    private func canEat(_ arr: [Int] ,_ h: Int, _ speed: Int) -> Bool {
        var totalTime = 0
        for num in arr {
            totalTime += (num + (speed - 1)) / speed
        }
        return totalTime <= h
    }
