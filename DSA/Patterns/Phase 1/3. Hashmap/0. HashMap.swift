//
//  0__HashMap.swift
//  DSA
//
//  Created by Vijay Kumar on 11/03/26.
//

import Foundation

/*
 HashMap — Internal Patterns
 ══════════════════════════════════
 1. direct lookup / complement    → Two Sum, 4Sum II, Count Pairs
 2. frequency count               → Anagram, Ransom, Majority, Palindrome, Rounds
 3. bidirectional mapping         → Isomorphic, Word Pattern, Custom Sort
 4. grouping / set ops            → Group Anagrams, Intersection I & II, Valid Sudoku
 5. frequency + sort/heap         → Sort By Freq, Top K Elements, Top K Words
 6. index / position tracking     → Longest Consecutive, Repeated DNA, Brick Wall
 7. prefix sum bridge             → Subarray Sum K
 8. greedy + freq                 → Hand of Straights, Task Scheduler, Minimum Rounds
 9. design (map + structure)      → LRU Cache, Insert Delete GetRandom, Design HashMap
 10. encoding / hashing trick     → Encode & Decode, Random Pick with Weight
 ══════════════════════════════════
*/

// MARK: - Phase 1: Basic Lookup  [direct lookup / complement]

//[1] Two Sum — https://leetcode.com/problems/two-sum/

//[2] Contains Duplicate — https://leetcode.com/problems/contains-duplicate/

//[3] Count Pairs With Given Sum — https://www.geeksforgeeks.org/count-pairs-with-given-sum/ // GFG, Flipkart | Two Sum variant on unsorted

// MARK: - Phase 2: Frequency Count  [frequency count]

//[4] Valid Anagram — https://leetcode.com/problems/valid-anagram/

//[5] Ransom Note — https://leetcode.com/problems/ransom-note/

//[6] Find the Difference — https://leetcode.com/problems/find-the-difference/

//[7] First Unique Character in a String — https://leetcode.com/problems/first-unique-character-in-a-string/

//[8] Majority Element — https://leetcode.com/problems/majority-element/

//[9] Majority Element II — https://leetcode.com/problems/majority-element-ii/ // Google, Razorpay | Boyer-Moore extended

//[10] Longest Palindrome — https://leetcode.com/problems/longest-palindrome/

//[11] Minimum Rounds to Complete All Tasks — https://leetcode.com/problems/minimum-rounds-to-complete-all-tasks/ // Razorpay, Swiggy | freq → divide by 3 & 2 greedily

//[12] Number of Pairs — https://leetcode.com/problems/number-of-pairs-of-interchangeable-rectangles/

// MARK: - Phase 3: Pattern Mapping  [bidirectional mapping]

//[13] Isomorphic Strings — https://leetcode.com/problems/isomorphic-strings/

//[14] Word Pattern — https://leetcode.com/problems/word-pattern/

//[15] Custom Sort String — https://leetcode.com/problems/custom-sort-string/ // Google | order map → sort lambda

// MARK: - Phase 4: Grouping / Set Operations  [grouping / set ops]

//[16] Group Anagrams — https://leetcode.com/problems/group-anagrams/

//[17] Intersection of Two Arrays — https://leetcode.com/problems/intersection-of-two-arrays/

//[18] Intersection of Two Arrays II — https://leetcode.com/problems/intersection-of-two-arrays-ii/

//[19] Valid Sudoku — https://leetcode.com/problems/valid-sudoku/ // Amazon, Microsoft | 3 sets per row/col/box

// MARK: - Phase 5: Frequency + Sorting  [frequency + sort/heap]

//[20] Sort Characters By Frequency — https://leetcode.com/problems/sort-characters-by-frequency/

//[21] Top K Frequent Elements — https://leetcode.com/problems/top-k-frequent-elements/

//[22] Top K Frequent Words — https://leetcode.com/problems/top-k-frequent-words/

// MARK: - Phase 6: Two Sum Variants

//[23] 4Sum II — https://leetcode.com/problems/4sum-ii/

// MARK: - Phase 7: Index / Position Tracking  [index / position tracking]

//[24] Longest Consecutive Sequence — https://leetcode.com/problems/longest-consecutive-sequence/

//[25] Repeated DNA Sequences — https://leetcode.com/problems/repeated-dna-sequences/

//[26] Brick Wall — https://leetcode.com/problems/brick-wall/ // Meta | max edge frequency → min bricks

// MARK: - Phase 8: HashMap + Prefix Sum Bridge  [prefix sum bridge]

//[27] Subarray Sum Equals K — https://leetcode.com/problems/subarray-sum-equals-k/ // ← revisit from Prefix Sum

// MARK: - Phase 9: HashMap + Greedy  [greedy + freq]

//[28] Hand of Straights — https://leetcode.com/problems/hand-of-straights/

//[29] Task Scheduler — https://leetcode.com/problems/task-scheduler/ // ← revisit from Greedy

// MARK: - Phase 10: Design  [design (map + structure)]

//[30] Design HashMap — https://leetcode.com/problems/design-hashmap/ // understand internals: array of buckets + chaining

//[31] Insert Delete GetRandom O(1) — https://leetcode.com/problems/insert-delete-getrandom-o1/ // map + array trick for O(1) random

//[32] LRU Cache — https://leetcode.com/problems/lru-cache/ // Zomato, Uber, PhonePe | HashMap + doubly linked list

// MARK: - Phase 11: Encoding / Hashing Trick  [encoding / hashing trick]

//[33] Encode and Decode Strings — https://leetcode.com/problems/encode-and-decode-strings/ // Meta, Google | length-prefix encoding

//[34] Random Pick with Weight — https://leetcode.com/problems/random-pick-with-weight/ // prefix sum + binary search on random
