//
//  0 Two Pointer.swift
//  DSA
//
//  Created by Vijay Kumar on 06/03/26.
//

import Foundation

/*
 Two Pointer — Internal Patterns
 ══════════════════════════════════
 1. opposite ends (read-only)    → Reverse String, Palindrome, Reverse Vowels
 2. two string traversal         → Is Subsequence, Backspace Compare, Merge Alternately
 3. slow / fast (in-place write) → Remove Dups, Move Zeroes, Find Duplicate
 4. partition / three pointer    → Sort Colors, Sort by Parity, Longest Mountain
 5. sorted array (sum variants)  → Two Sum II, 3Sum, 4Sum, Squares
 6. maximize / minimize          → Container, Trapping Rain, Boats
 7. matrix two pointer           → Spiral Matrix, Rotate Image, Set Zeroes
 ══════════════════════════════════
*/

// MARK: - Phase 1: Opposite Ends (Read)  [opposite ends]

//[1] Reverse String — https://leetcode.com/problems/reverse-string/

//[2] Valid Palindrome — https://leetcode.com/problems/valid-palindrome/

//[3] Valid Palindrome II — https://leetcode.com/problems/valid-palindrome-ii/

//[4] Reverse Vowels of a String — https://leetcode.com/problems/reverse-vowels-of-a-string/

//[5] Reverse Only Letters — https://leetcode.com/problems/reverse-only-letters/

// MARK: - Phase 2: Two String Traversal

//[6] Merge Strings Alternately — https://leetcode.com/problems/merge-strings-alternately/

//[7] Is Subsequence — https://leetcode.com/problems/is-subsequence/

//[8] Backspace String Compare — https://leetcode.com/problems/backspace-string-compare/

//[9] Sentence Similarity III — https://leetcode.com/problems/sentence-similarity-iii/

//[10] Check If One String Swap Can Make Strings Equal — https://leetcode.com/problems/check-if-one-string-swap-can-make-strings-equal/

//[11] Long Press Input — https://leetcode.com/problems/long-pressed-name/ // ← added

// MARK: - Phase 3: Slow / Fast Pointer (In-Place Write)

//[12] Remove Element — https://leetcode.com/problems/remove-element/ // ← added

//[13] Remove Duplicates from Sorted Array — https://leetcode.com/problems/remove-duplicates-from-sorted-array/

//[14] Remove Duplicates from Sorted Array II — https://leetcode.com/problems/remove-duplicates-from-sorted-array-ii/ // ← added

//[15] Move Zeroes — https://leetcode.com/problems/move-zeroes/

//[16] Find the Duplicate Number — https://leetcode.com/problems/find-the-duplicate-number/ // ← added | Floyd's cycle detection

// MARK: - Phase 4: Partition / Three Pointer

//[17] Sort Colors — https://leetcode.com/problems/sort-colors/ // ← added | Dutch National Flag

//[18] Sort Array by Parity — https://leetcode.com/problems/sort-array-by-parity/ // ← added

//[19] Longest Mountain in Array — https://leetcode.com/problems/longest-mountain-in-array/ // ← added

// MARK: - Phase 5: Sorted Array  [sum variants]

// ── Sub-type A: two pointer on sorted ─────────────────────────────────────

//[20] Two Sum II — https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/

//[21] Squares of a Sorted Array — https://leetcode.com/problems/squares-of-a-sorted-array/

//[22] 3Sum Closest — https://leetcode.com/problems/3sum-closest/ // ← added

//[23] 3Sum — https://leetcode.com/problems/3sum/

//[24] 4Sum — https://leetcode.com/problems/4sum/ // ← added

// ── Sub-type B: binary search assist ──────────────────────────────────────

//[25] Number of Subsequences That Satisfy the Given Sum Condition — https://leetcode.com/problems/number-of-subsequences-that-satisfy-the-given-sum-condition/ // ← added | sort + two pointer + pow trick

// MARK: - Phase 6: Maximize / Minimize

//[26] Container With Most Water — https://leetcode.com/problems/container-with-most-water/

//[27] Minimum Size Subarray Sum — https://leetcode.com/problems/minimum-size-subarray-sum/ // ← added | variable window bridge

//[28] Trapping Rain Water — https://leetcode.com/problems/trapping-rain-water/ // ← added | revisit from Monotonic Stack

//[29] Boats to Save People — https://leetcode.com/problems/boats-to-save-people/ // ← added | Amazon, Multiple | greedy + opposite ends

// MARK: - Phase 7: In-Place Matrix  [matrix two pointer]

//[30] Merge Sorted Array (in-place) — https://leetcode.com/problems/merge-sorted-array/ // ← added | Amazon, Microsoft | reverse two pointer

//[31] Next Permutation — https://leetcode.com/problems/next-permutation/ // ← added | Amazon, Google, Flipkart | suffix + reverse trick

//[32] Rotate Array — https://leetcode.com/problems/rotate-array/ // ← added | Amazon | reverse trick

//[33] String Compression — https://leetcode.com/problems/string-compression/ // ← added | Goldman, Amazon | slow/fast write

//[34] Longest Common Prefix — https://leetcode.com/problems/longest-common-prefix/ // ← added | Amazon, Google, Flipkart

//[35] Spiral Matrix — https://leetcode.com/problems/spiral-matrix/ // ← added | Amazon, Microsoft, Walmart | 4-boundary pointer

//[36] Rotate Image — https://leetcode.com/problems/rotate-image/ // ← added | Amazon, Google, Microsoft | transpose + reverse

//[37] Set Matrix Zeroes — https://leetcode.com/problems/set-matrix-zeroes/ // ← added | Amazon, Meta, Flipkart | marker trick

// MARK: - Phase 8: Frequency / Voting

//[38] Majority Element II (>n/3) — https://leetcode.com/problems/majority-element-ii/ // ← added | Google, Razorpay | Boyer-Moore extended

//[39] Product of Array Except Self — https://leetcode.com/problems/product-of-array-except-self/ // ← added | Amazon, Facebook | prefix × suffix two-pass

//[40] Minimum Difference Between Highest and Lowest of K Scores — https://leetcode.com/problems/minimum-difference-between-highest-and-lowest-of-k-scores/ // ← added | sort + fixed window


//Neetcode ke links ye hain:
//
//| # | Problem | Link |
//|---|---------|------|
//| 1 | Valid Palindrome | https://neetcode.io/problems/is-palindrome |
//| 2 | Two Sum II | https://neetcode.io/problems/two-integer-sum-ii |
//| 3 | 3Sum | https://neetcode.io/problems/three-integer-sum |
//| 4 | Container With Most Water | https://neetcode.io/problems/max-water-container |
//| 5 | Trapping Rain Water | https://neetcode.io/problems/trapping-rain-water |
//| 6 | Is Subsequence | https://neetcode.io/problems/is-subsequence |
//| 7 | Move Zeroes | https://neetcode.io/problems/move-zeroes |
//| 8 | Remove Duplicates from Sorted Array | https://neetcode.io/problems/remove-duplicates-from-sorted-array
//| 9 | Sort Colors | https://neetcode.io/problems/sort-colors |
//| 10 | 4Sum | https://neetcode.io/problems/four-sum |
//| 11 | Boats to Save People | https://neetcode.io/problems/boats-to-save-people |
//| 12 | Squares of a Sorted Array | https://neetcode.io/problems/squares-of-a-sorted-array |
//
