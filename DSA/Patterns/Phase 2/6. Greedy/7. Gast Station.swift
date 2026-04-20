//
//  7. Gast Station.swift
//  DSA
//
//  Created by Vijay Kumar on 26/03/26.
//

import Foundation

func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
    for i in 0..<gas.count {
        var count = 0
        var tank = 0
        var start = i
        
        while( count < gas.count) {
            tank += gas[start] - cost[start]
            if tank < 0 {
                break
            }
            start = (start + 1) % gas.count
            count += 1
        }
        if count == gas.count {
            return start
        }
    }
    return -1
}

func canCompleteCircuitII(_ gas: [Int], _ cost: [Int]) -> Int {
    var totalGas = 0
    var totalCost = 0
    for i in 0..<gas.count {
        totalGas += gas[i]
        totalCost += cost[i]
    }
    if totalGas < totalCost {
        return -1
    }
    var currntGas = 0
    var start = 0
    for i in 0..<gas.count {
        currntGas += gas[start] - cost[start]
        if currntGas < 0 {
            start = i + 1
            currntGas = 0
        }
    }
    return start
}

