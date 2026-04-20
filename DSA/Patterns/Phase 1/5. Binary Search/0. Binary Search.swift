//
//  Binary Search.swift
//  DSA
//
//  Created by Vijay Kumar on 13/03/26.
//

import Foundation

/*
 Binary Search — Internal Patterns
 ══════════════════════════════════
 1. ceil division count      → Koko, Divisor, Capacity, Speed, Bouquets
 2. greedy placement count   → Cows, Magnetic, Split, Pages, Painter
 3. which half is sorted     → Find Min, Search Rotated I & II
 4. neighbour comparison     → Peak, Single Element
 5. bisect_left              → First&Last, Spells, Count Negatives
 6. BS inside DS             → Time Based KV, Search Suggestions
 7. partition logic          → Median of Two Sorted Arrays
 ══════════════════════════════════
*/

// MARK: - Phase 1: Basic Binary Search

//[1] Binary Search — https://leetcode.com/problems/binary-search/

//[2] Search Insert Position — https://leetcode.com/problems/search-insert-position/

//[3] Sqrt(x) — https://leetcode.com/problems/sqrtx/

// MARK: - Phase 2: Left / Right Boundary  [bisect_left]

//[4] Find First and Last Position of Element in Sorted Array — https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array/

//[5] Count Negative Numbers in Sorted Matrix — https://leetcode.com/problems/count-negative-numbers-in-a-sorted-matrix/

//[6] Successful Pairs of Spells and Potions — https://leetcode.com/problems/successful-pairs-of-spells-and-potions/

// MARK: - Phase 3: 2D Binary Search

//[7] Search a 2D Matrix — https://leetcode.com/problems/search-a-2d-matrix/

//[8] Search a 2D Matrix II — https://leetcode.com/problems/search-a-2d-matrix-ii/

// MARK: - Phase 4: Rotated Array  [which half is sorted]

//[9] Find Minimum in Rotated Sorted Array — https://leetcode.com/problems/find-minimum-in-rotated-sorted-array/

//[10] Search in Rotated Sorted Array — https://leetcode.com/problems/search-in-rotated-sorted-array/

//[11] Search in Rotated Sorted Array II — https://leetcode.com/problems/search-in-rotated-sorted-array-ii/

// MARK: - Phase 5: Peak Finding  [neighbour comparison]

//[12] Find Peak Element — https://leetcode.com/problems/find-peak-element/

//[13] Single Element in a Sorted Array — https://leetcode.com/problems/single-element-in-a-sorted-array/

// MARK: - Phase 6: Binary Search on Answer

// ── Sub-type A: ceil division count ───────────────────────────────────────

//[14] Koko Eating Bananas — https://leetcode.com/problems/koko-eating-bananas/

//[15] Find the Smallest Divisor Given a Threshold — https://leetcode.com/problems/find-the-smallest-divisor-given-a-threshold/

//[16] Capacity To Ship Packages Within D Days — https://leetcode.com/problems/capacity-to-ship-packages-within-d-days/

//[17] Minimum Speed to Arrive on Time — https://leetcode.com/problems/minimum-speed-to-arrive-on-time/ // last element no ceil

//[18] Minimum Number of Days to Make m Bouquets — https://leetcode.com/problems/minimum-number-of-days-to-make-m-bouquets/

// ── Sub-type B: greedy placement count ────────────────────────────────────

//[19] Aggressive Cows — https://www.geeksforgeeks.org/aggressive-cows/

//[20] Magnetic Force Between Two Balls — https://leetcode.com/problems/magnetic-force-between-two-balls/ // cows twin

//[21] Split Array Largest Sum — https://leetcode.com/problems/split-array-largest-sum/

//[22] Allocate Minimum Number of Pages — https://www.geeksforgeeks.org/allocate—minimum-number-pages/ // split twin

//[23] Painter's Partition — https://www.geeksforgeeks.org/painters-partition-problem/ // split twin

// https://leetcode.com/problems/heaters/description/ [Microsft]

// MARK: - Phase 7: Binary Search + Two Pointer

//[24] Find K Closest Elements — https://leetcode.com/problems/find-k-closest-elements/

// MARK: - Phase 8: Binary Search + DS  [BS inside DS]

//[25] Time Based Key-Value Store — https://leetcode.com/problems/time-based-key-value-store/

//[26] Search Suggestions System — https://leetcode.com/problems/search-suggestions-system/

// MARK: - Phase 9: Hard  [partition logic]

//[27] Median of Two Sorted Arrays — https://leetcode.com/problems/median-of-two-sorted-arrays/
