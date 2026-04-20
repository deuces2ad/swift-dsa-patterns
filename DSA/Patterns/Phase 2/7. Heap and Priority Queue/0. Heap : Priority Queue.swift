//
//  0. Heap : Priority Queue.swift
//  DSA
//
//  Created by Vijay Kumar on 13/03/26.
//

import Foundation

/*
 Heap / Priority Queue — Internal Patterns
 ══════════════════════════════════
 1. max heap simulation     → Last Stone, Reorganize, IPO
 2. min heap top-k          → K Closest, Kth Largest, Top K Freq, Kth Smallest Matrix
 3. greedy + heap           → Connect Sticks, Task Scheduler, Furthest Building, Total Cost
 4. merge k sorted          → Merge K Lists, K Pairs, K-Sorted Array, Smallest Range
 5. two heaps               → Median Stream, Sliding Window Median, IPO
 6. sliding window + heap   → Sliding Window Max, Meeting Rooms II (heap approach)
 7. simulation              → Single CPU, Process Servers, Seat Manager
 ══════════════════════════════════
*/

// MARK: - Phase 1: Basic Heap  [max heap simulation / min heap size k]

//[1] Last Stone Weight — https://leetcode.com/problems/last-stone-weight/ // max heap simulation

//[2] Kth Largest Element in an Array — https://leetcode.com/problems/kth-largest-element-in-an-array/ // min heap size k

//[3] Kth Largest Element in a Stream — https://leetcode.com/problems/kth-largest-element-in-a-stream/ // min heap size k, online

// MARK: - Phase 2: Top K  [min heap size k]

//[4] K Closest Points to Origin — https://leetcode.com/problems/k-closest-points-to-origin/

//[5] Top K Frequent Elements — https://leetcode.com/problems/top-k-frequent-elements/ // ← revisit from Hashing

//[6] Top K Frequent Words — https://leetcode.com/problems/top-k-frequent-words/ // ← revisit from Hashing

//[7] Least Number of Unique Integers after K Removals — https://leetcode.com/problems/least-number-of-unique-integers-after-k-removals/ // ← Meta

//[8] Ugly Number II — https://leetcode.com/problems/ugly-number-ii/ // ← Amazon, Google | min heap + dedup

//[9] Kth Smallest Element in a Sorted Matrix — https://leetcode.com/problems/kth-smallest-element-in-a-sorted-matrix/ // ← Amazon, Flipkart | min heap merge k rows

// MARK: - Phase 3: Greedy + Heap

//[10] Minimum Cost to Connect Sticks — https://leetcode.com/problems/minimum-cost-to-connect—sticks/

//[11] Reorganize String — https://leetcode.com/problems/reorganize-string/

//[12] Task Scheduler — https://leetcode.com/problems/task-scheduler/ // ← revisit from Greedy

//[13] Furthest Building You Can Reach — https://leetcode.com/problems/furthest-building-you-can-reach/ // greedy | keep k largest climbs

//[14] Total Cost to Hire K Workers - https://leetcode.com/problems/total-cost-to-hire-k-workers/ // ← Amazon | two min heaps, greedy pick

// MARK: - Phase 4: Merge K Sorted

//[15] Merge k Sorted Lists — https://leetcode.com/problems/merge-k-sorted-lists/

//[16] Find K Pairs with Smallest Sums — https://leetcode.com/problems/find-k-pairs-with-smallest-sums/

//[17] Sort Nearly Sorted Array (K-Sorted) — https://www.geeksforgeeks.org/nearly-sorted-algorithm/ // ← Flipkart, Walmart | min heap size k+1

//[18] Smallest Range Covering Elements from K Lists - https://leetcode.com/problems/smallest-range-covering-elements-from-k-lists/ // ← Google | merge k + max track

// MARK: - Phase 5: Two Heaps

//[19] Find Median from Data Stream — https://leetcode.com/problems/find—median-from-data-stream/

//[20] Sliding Window Median — https://leetcode.com/problems/sliding-window—median/ // ← Google | two heaps + lazy deletion

//[21] IPO — https://leetcode.com/problems/ipo/ // unlock by capital, pick max profit

// MARK: - Phase 6: Sliding Window + Heap

//[22] Sliding Window Maximum — https://leetcode.com/problems/sliding-window-maximum/ // ← revisit from Sliding Window

//[23] Meeting Rooms II — https://leetcode.com/problems/meeting-rooms-ii/ // ← Swiggy, Flipkart | min heap on end times | ← revisit from Merge Intervals

// MARK: - Phase 7: Simulation  [event-driven, two heaps]

//[24] Seat Reservation Manager — https://leetcode.com/problems/seat—reservation-manager/ // min heap design

//[25] Single-Threaded CPU — https://leetcode.com/problems/single-threaded-cpu/ // ← Meta | sort by arrival, min heap by duration

//[26] Process Tasks Using Servers — https://leetcode.com/problems/process-tasks-using-servers/ // two heaps | free + busy servers

// MARK: - Phase 8: Hard

//[27] Maximum Performance of a Team — https://leetcode.com/problems/maximum-performance-of-a-team/ // ← Google | sort by efficiency, min heap size k

//[28] Minimize Deviation in Array — https://leetcode.com/problems/minimize-deviation-in-array/ // ← Google | max heap + normalize evens
