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
 1. direct lookup / complement    → Two Sum, Count Pairs, 4Sum II
 2. frequency count               → Anagram, Ransom, Majority I & II, Palindrome, Rounds
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

// MARK: - Phase 1: Direct Lookup / Complement  [direct lookup / complement]

//🔴 Two Sum — https://leetcode.com/problems/two-sum/ | https://neetcode.io/problems/two-integer-sum // ★ NC150

//🔴 Contains Duplicate — https://leetcode.com/problems/contains-duplicate/ | https://neetcode.io/problems/duplicate-integer // ★ NC150

//🟡 Count Pairs With Given Sum — https://www.geeksforgeeks.org/count-pairs-with-given-sum/ // ← Flipkart | Two Sum variant on unsorted array

// MARK: - Phase 2: Frequency Count  [frequency count]

//🔴 Valid Anagram — https://leetcode.com/problems/valid-anagram/ | https://neetcode.io/problems/is-anagram // ★ NC150

//🔴 Ransom Note — https://leetcode.com/problems/ransom-note/

//🟢 Find the Difference — https://leetcode.com/problems/find-the-difference/ // ← warmup | XOR trick also works

//🟢 First Unique Character in a String — https://leetcode.com/problems/first-unique-character-in-a-string/ // ← warmup | Amazon, Google

//🔴 Majority Element — https://leetcode.com/problems/majority-element/ // ← Boyer-Moore base

//🔴 Majority Element II — https://leetcode.com/problems/majority-element-ii/ // ← Google, Razorpay | Boyer-Moore extended; revisit from Two Pointer

//🟡 Longest Palindrome — https://leetcode.com/problems/longest-palindrome/ // ← odd freq count trick

//🔴 Minimum Rounds to Complete All Tasks — https://leetcode.com/problems/minimum-rounds-to-complete-all-tasks/ // ← Razorpay, Swiggy | freq → divide by 3 & 2 greedily

//🟢 Number of Pairs of Interchangeable Rectangles — https://leetcode.com/problems/number-of-pairs-of-interchangeable-rectangles/ // ← warmup | ratio as key

// MARK: - Phase 3: Bidirectional Mapping  [bidirectional mapping]

//🟡 Isomorphic Strings — https://leetcode.com/problems/isomorphic-strings/ // ← two-way map; one map is a trap

//🟡 Word Pattern — https://leetcode.com/problems/word-pattern/ // ← Isomorphic twin on words

//🟢 Custom Sort String — https://leetcode.com/problems/custom-sort-string/ // ← Google | order map → sort lambda | low ROI

// MARK: - Phase 4: Grouping / Set Operations  [grouping / set ops]

//🔴 Group Anagrams — https://leetcode.com/problems/group-anagrams/ | https://neetcode.io/problems/anagram-groups // ★ NC150 | every company | sorted key trick

//🟢 Intersection of Two Arrays — https://leetcode.com/problems/intersection-of-two-arrays/ // ← warmup | set

//🟡 Intersection of Two Arrays II — https://leetcode.com/problems/intersection-of-two-arrays-ii/ // ← freq map; follow-up: sorted array?

//🟡 Valid Sudoku — https://leetcode.com/problems/valid-sudoku/ // ← Amazon, Microsoft | 3 sets simultaneously per row/col/box

// MARK: - Phase 5: Frequency + Sort / Heap  [frequency + sort/heap]

//🟡 Sort Characters By Frequency — https://leetcode.com/problems/sort-characters-by-frequency/ // ← freq map + sort desc

//🔴 Top K Frequent Elements — https://leetcode.com/problems/top-k-frequent-elements/ | https://neetcode.io/problems/top-k-elements-in-list // ★ NC150 | bucket sort O(n) trick

//🔴 Top K Frequent Words — https://leetcode.com/problems/top-k-frequent-words/ // ← revisit from Heap | tie-break by lex order twist

// MARK: - Phase 6: Two Sum Variants  [direct lookup / complement]

//🟡 4Sum II — https://leetcode.com/problems/4sum-ii/ // ← pair-split into two hashmaps trick

// MARK: - Phase 7: Index / Position Tracking  [index / position tracking]

//🔴 Longest Consecutive Sequence — https://leetcode.com/problems/longest-consecutive-sequence/ | https://neetcode.io/problems/longest-consecutive-sequence // ★ NC150 | Amazon, Walmart | set O(n); "why not sort?" must explain

//🟡 Repeated DNA Sequences — https://leetcode.com/problems/repeated-dna-sequences/ // ← sliding window + hashset; not pure freq count

//🟡 Brick Wall — https://leetcode.com/problems/brick-wall/ // ← Meta | max edge frequency → min bricks; non-obvious framing

// MARK: - Phase 8: HashMap + Prefix Sum Bridge  [prefix sum bridge]

//🔴 Subarray Sum Equals K — https://leetcode.com/problems/subarray-sum-equals-k/ // ← revisit from Prefix Sum | most reusable bridge pattern

// MARK: - Phase 9: HashMap + Greedy  [greedy + freq]

//🟡 Hand of Straights — https://leetcode.com/problems/hand-of-straights/ // ← revisit from Greedy | sorted key order matters

//🔴 Task Scheduler — https://leetcode.com/problems/task-scheduler/ // ← revisit from Greedy | idle slots = max(0, (maxFreq-1) * n - rest)

// MARK: - Phase 10: Design  [design (map + structure)]

//🟡 Design HashMap — https://leetcode.com/problems/design-hashmap/ // ← internals: array of buckets + chaining

//🟡 Insert Delete GetRandom O(1) — https://leetcode.com/problems/insert-delete-getrandom-o1/ // ← map + array combo; O(1) random = array index trick

//🔴 LRU Cache — https://leetcode.com/problems/lru-cache/ | https://neetcode.io/problems/lru-cache // ★ NC150 (Linked List section) | Zomato, Uber, PhonePe | HashMap + doubly linked list; iOS caching relevant

// MARK: - Phase 11: Encoding / Hashing Trick  [encoding / hashing trick]

//🟢 Encode and Decode Strings — https://leetcode.com/problems/encode-and-decode-strings/ // ← Meta, Google | length-prefix encoding | low ROI for Swiggy/Walmart

//🟢 Random Pick with Weight — https://leetcode.com/problems/random-pick-with-weight/ // ← prefix sum + binary search on random | low ROI for Swiggy/Walmart
