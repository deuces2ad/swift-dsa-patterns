//
//  0__Prefix_Sum.swift
//  DSA
//
//  Created by Vijay Kumar on 13/03/26.
//

import Foundation

/*
 Prefix Sum — Internal Patterns
 ══════════════════════════════════
 1. plain prefix array           → Running Sum, Range Query, Pivot Index, Altitude
 2. prefix sum + hashmap         → Subarray Sum K, Max Size K, Divisible by K, Continuous, Binary Sum, Nice, Contiguous Array
 3. prefix XOR                   → XOR Queries
 4. prefix on 2D matrix          → Range Sum 2D
 5. prefix + deque (min prefix)  → Shortest Subarray ≥ K
 6. prefix left + right scan     → Product Except Self, Split Array, Absolute Diff, Min Penalty
 7. prefix mod trick             → Divisible by K, Continuous Sum, Make Sum Div P
 ══════════════════════════════════
*/

// MARK: - Phase 1: Plain Prefix Array  [plain prefix array]

//[1] Running Sum of 1D Array — https://leetcode.com/problems/running-sum-of-1d-array/

//[2] Range Sum Query - Immutable — https://leetcode.com/problems/range-sum-query-immutable/

//[3] Find Pivot Index — https://leetcode.com/problems/find-pivot-index/

//[4] Find the Highest Altitude — https://leetcode.com/problems/find-the-highest-altitude/ // ← added | Warmup, Multiple | prefix on difference array (gain)

// MARK: - Phase 2: Prefix Sum + HashMap  [prefix sum + hashmap]

//[5] Subarray Sum Equals K — https://leetcode.com/problems/subarray-sum-equals-k/ // ← revisit from HashMap

//[6] Maximum Size Subarray Sum Equals K — https://leetcode.com/problems/maximum-size-subarray-sum-equals-k/ // ← added | store first-seen index

//[7] Subarray Sums Divisible by K — https://leetcode.com/problems/subarray-sums-divisible-by-k/ // ← mod trick; revisit Phase 7

//[8] Continuous Subarray Sum — https://leetcode.com/problems/continuous-subarray-sum/ // ← mod trick; revisit Phase 7

//[9] Binary Subarrays With Sum — https://leetcode.com/problems/binary-subarrays-with-sum/ // ← added | atMost(goal) - atMost(goal-1) bridge

//[10] Count Number of Nice Subarrays — https://leetcode.com/problems/count-number-of-nice-subarrays/ // ← added | odd count → prefix parity

//[11] Contiguous Array — https://leetcode.com/problems/contiguous-array/ // ← added | 0→-1 transform, longest balanced subarray

// MARK: - Phase 3: Prefix XOR  [prefix XOR]

//[12] XOR Queries of a Subarray — https://leetcode.com/problems/xor-queries-of-a-subarray/ // ← added | prefix[r] ^ prefix[l-1]

// MARK: - Phase 4: Prefix on 2D Matrix  [prefix on 2D matrix]

//[13] Range Sum Query 2D - Immutable — https://leetcode.com/problems/range-sum-query-2d-immutable/ // ← added | 2D prefix formula

// MARK: - Phase 5: Prefix + Deque  [prefix + deque (min prefix)]

//[14] Shortest Subarray with Sum at Least K - https://leetcode.com/problems/shortest-subarray-with-sum-at-least-k/ // ← added | monotonic deque on prefix; hard | revisit from Sliding Window

// MARK: - Phase 6: Left + Right Prefix Scan  [prefix left + right scan]

//[15] Product of Array Except Self — https://leetcode.com/problems/product-of-array-except-self/ // ← revisit from Two Pointer | Amazon | left-prefix × right-suffix, no division

//[16] Number of Ways to Split Array — https://leetcode.com/problems/number-of-ways-to-split-array/ // ← added | Multiple | prefix total, check left ≥ right

//[17] Sum of Absolute Differences in Sorted Array — https://leetcode.com/problems/sum-of-absolute-differences-in-a-sorted-array/ // ← added | Amazon | left prefix + right suffix math

//[18] Minimum Penalty for a Shop — https://leetcode.com/problems/minimum-penalty-for-a-shop/ // ← added | Google | prefix N-count + suffix Y-count, scan for min

// MARK: - Phase 7: Prefix Mod Trick  [prefix mod trick]

//[19] Subarray Sums Divisible by K — https://leetcode.com/problems/subarray-sums-divisible-by-k/ // ← revisit from Phase 2 | mod(prefix, k) → map

//[20] Continuous Subarray Sum — https://leetcode.com/problems/continuous-subarray-sum/ // ← revisit from Phase 2 | mod(prefix, k) seen before → length ≥ 2

//[21] Make Sum Divisible by P — https://leetcode.com/problems/make-sum-divisible-by-p/ // ← added | Zepto, Razorpay | mod target = totalSum%p, find min subarray to remove
