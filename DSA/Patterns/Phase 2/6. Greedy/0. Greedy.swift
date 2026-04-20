//
//  0__Greedy.swift
//  DSA
//
//  Created by Vijay Kumar on 13/03/26.
//

import Foundation

/*
 Greedy — Internal Patterns
 ══════════════════════════════════
 1. sort + scan (assign/maximize)    → Cookies, Max Units, Advantage Shuffle, Two City
 2. stock (single / multi tx)        → Buy&Sell I, Buy&Sell II
 3. jump / reach scan                → Jump Game I & II, Min Taps
 4. circular carry                   → Gas Station
 5. interval greedy (sort by end)    → Non-overlap, Arrows, Pair Chain, Partition Labels
 6. frequency + scheduling           → Task Scheduler, Hand of Straights, Min Deletions
 7. two direction scan               → Candy, Wiggle Subsequence
 8. string greedy (stack-based)      → Remove K Digits, Largest Number, Valid Paren *
 9. sort + cost trick                → Two City Scheduling, Job Sequencing
 10. opposite ends greedy            → Boats to Save People
 ══════════════════════════════════
*/

// MARK: - Phase 1: Sort + Scan  [sort + scan (assign/maximize)]

//[1] Assign Cookies — https://leetcode.com/problems/assign-cookies/

//[2] Lemonade Change — https://leetcode.com/problems/lemonade-change/

//[26] Maximum Units on a Truck — https://leetcode.com/problems/maximum-units-on-a-truck/ // ← added | Amazon | sort by units desc, greedy fill

//[28] Reduce Array Size to The Half — https://leetcode.com/problems/reduce-array-size-to-the-half/ // ← added | Google | sort freq desc, greedily pick most frequent

//[30] Advantage Shuffle — https://leetcode.com/problems/advantage-shuffle/ // ← added | Google | sort both, greedy beat or sacrifice smallest

// MARK: - Phase 2: Stock Problems  [stock (single / multi tx)]

//[3] Best Time to Buy and Sell Stock — https://leetcode.com/problems/best-time-to-buy-and-sell-stock/

//[4] Best Time to Buy and Sell Stock II — https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/

// MARK: - Phase 3: Jump / Reach  [jump / reach scan]

//[5] Jump Game — https://leetcode.com/problems/jump-game/

//[6] Jump Game II — https://leetcode.com/problems/jump-game-ii/

//[29] Minimum Number of Taps to Water Garden — https://leetcode.com/problems/minimum-number-of-taps-to-open-to-water-a-garden/ // ← added | Google | convert to jump game II: each tap = interval, extend reach greedily

// MARK: - Phase 4: Circular Greedy  [circular carry]

//[7] Gas Station — https://leetcode.com/problems/gas-station/

// MARK: - Phase 5: Interval Greedy  [interval greedy (sort by end)]

//[8] Non-overlapping Intervals — https://leetcode.com/problems/non-overlapping-intervals/ // ← revisit from Merge Intervals

//[9] Minimum Number of Arrows to Burst Balloons — https://leetcode.com/problems/minimum-number-of-arrows-to-burst-balloons/ // ← revisit from Merge Intervals

//[10] Partition Labels — https://leetcode.com/problems/partition-labels/

//[18] Maximum Length of Pair Chain — https://leetcode.com/problems/maximum-length-of-pair-chain/ // ← added | Swiggy confirmed | sort by end, same as Non-overlap twin

//[21] Job Sequencing Problem — https://www.geeksforgeeks.org/job-sequencing-problem/ // ← added | Flipkart confirmed | sort by profit desc, assign latest free slot

//[17] Minimum Number of Platforms — https://www.geeksforgeeks.org/minimum-number-of-platforms-required-for-a-railway/ // ← added | Groww, Walmart | sort arrivals & departures separately, two pointer sweep

// MARK: - Phase 6: Frequency + Scheduling  [frequency + scheduling]

//[11] Task Scheduler — https://leetcode.com/problems/task-scheduler/ // ← revisit from HashMap

//[12] Hand of Straights — https://leetcode.com/problems/hand-of-straights/ // ← revisit from HashMap

//[25] Minimum Deletions to Make Character Frequencies Unique — https://leetcode.com/problems/minimum-deletions-to-make-character-frequencies-unique/ // ← added | Razorpay, Swiggy | sort freq desc, reduce each to prev-1 if collision

// MARK: - Phase 7: Two Direction Scan  [two direction scan]

//[13] Candy — https://leetcode.com/problems/candy/

//[14] Wiggle Subsequence — https://leetcode.com/problems/wiggle-subsequence/

// MARK: - Phase 8: String Greedy  [string greedy (stack-based)]

//[15] Remove K Digits — https://leetcode.com/problems/remove-k-digits/ // ← revisit from Monotonic Stack

//[16] Largest Number — https://leetcode.com/problems/largest-number/

//[27] Smallest String With A Given Numeric Value — https://leetcode.com/problems/smallest-string-with-a-given-numeric-value/ // ← added | Amazon | greedy fill 'z' from right, remainder fills current pos

//[23] Valid Parenthesis String — https://leetcode.com/problems/valid-parenthesis-string/ // ← added | Amazon, Flipkart | track lo/hi range of open count, * = (-1, 0, +1)

// MARK: - Phase 9: Sort + Cost Trick  [sort + cost trick]

//[24] Two City Scheduling — https://leetcode.com/problems/two-city-scheduling/ // ← added | Amazon | sort by (costA - costB), send cheapest half to A

//[19] Minimum Cost for Tickets — https://leetcode.com/problems/minimum-cost-for-tickets/ // ← added | Zepto confirmed | DP-greedy hybrid; track coverage window greedily | revisit from DP

//[22] Queue Reconstruction by Height — https://leetcode.com/problems/queue-reconstruction-by-height/ // ← added | Amazon, Google | sort tall-first, insert at index k

// MARK: - Phase 10: Opposite Ends Greedy  [opposite ends greedy]

//[20] Boats to Save People — https://leetcode.com/problems/boats-to-save-people/ // ← added | Multiple | sort + two pointer, pair heaviest with lightest if fits | revisit from Two Pointer
