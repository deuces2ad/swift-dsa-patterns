//
//  0__Sliding_Window_.swift
//  DSA
//
//  Created by Vijay Kumar on 06/03/26.
//

import Foundation

/*
 Sliding Window — Internal Patterns
 ══════════════════════════════════
 1. fixed window sum/count      → Max Avg, Vowels, Distinct Sum K, Grumpy
 2. variable window longest     → Max Ones III, No Repeat, Char Replace, Longest 1s Delete
 3. at-most K distinct          → K Distinct, Fruit Baskets
 4. fixed window freq match     → Permutation, Anagrams, Concatenation All Words
 5. minimum window shrink       → Min Window Substring, Min Window Subsequence
 6. exactly K = atMost trick    → Subarrays K Diff, Num Substrings All 3, Count Max≥K
 7. complement framing          → Reduce X to Zero
 8. monotonic deque window      → Sliding Window Max, Min Cards Pickup
 ══════════════════════════════════
*/

// MARK: - Phase 1: Fixed Window Sum / Count  [fixed window sum/count]

//[1] Maximum Average Subarray I — https://leetcode.com/problems/maximum-average-subarray-i/

//[2] Maximum Number of Vowels in a Substring of Given Length — https://leetcode.com/problems/maximum-number-of-vowels-in-a-substring-of-given-length/

//[3] Maximum Sum of Distinct Subarrays With Length K — https://leetcode.com/problems/maximum-sum-of-distinct-subarrays-with-length-k/

//[4] Grumpy Bookstore Owner — https://leetcode.com/problems/grumpy-bookstore-owner/ // fixed window on delta, not raw values | Google

// MARK: - Phase 2: Variable Window Longest  [variable window longest]

//[5] Max Consecutive Ones III — https://leetcode.com/problems/max-consecutive-ones-iii/

//[6] Longest Substring Without Repeating Characters — https://leetcode.com/problems/longest-substring-without-repeating-characters/

//[7] Longest Repeating Character Replacement — https://leetcode.com/problems/longest-repeating-character-replacement/

//[8] Longest Subarray of 1s After Deleting One Element — https://leetcode.com/problems/longest-subarray-of-1s-after-deleting-one-element/ // Max Ones III twin | allow exactly 1 zero

// MARK: - Phase 3: At Most K Distinct  [at-most K distinct]

//[9] Longest Substring with At Most K Distinct Characters — https://leetcode.com/problems/longest-substring-with-at-most-k-distinct-characters/

//[10] Fruit Into Baskets — https://leetcode.com/problems/fruit-into-baskets/ // at-most 2 distinct, same template

// MARK: - Phase 4: Fixed Window Freq Match  [fixed window freq match]

//[11] Permutation in String — https://leetcode.com/problems/permutation-in-string/

//[12] Find All Anagrams in a String — https://leetcode.com/problems/find-all-anagrams-in-a-string/

//[13] Substring with Concatenation of All Words — https://leetcode.com/problems/substring-with-concatenation-of-all-words/ // Google, Amazon | stride = word_len, freq map of words

// MARK: - Phase 5: Minimum Window Shrink  [minimum window shrink]

//[14] Minimum Window Substring — https://leetcode.com/problems/minimum-window-substring/

//[15] Minimum Window Subsequence — https://leetcode.com/problems/minimum-window-subsequence/ // forward + backward two-pass inside window

// MARK: - Phase 6: Exactly K = atMost(K) − atMost(K−1)  [exactly K = atMost trick]

//[16] Subarrays with K Different Integers — https://leetcode.com/problems/subarrays-with-k-different-integers/

//[17] Number of Substrings Containing All Three Characters — https://leetcode.com/problems/number-of-substrings-containing-all-three-characters/ // Amazon | atMost variant on a,b,c

//[18] Count Subarrays Where Max Element Appears at Least K Times — https://leetcode.com/problems/count-subarrays-where-max-element-appears-at-least-k-times/ // Recent OA | atLeast(K) = total - atMost(K-1)

// MARK: - Phase 7: Complement Framing  [complement framing]

//[19] Minimum Operations to Reduce X to Zero — https://leetcode.com/problems/minimum-operations-to-reduce-x-to-zero/ // Google | flip: find max subarray sum = total - X

// MARK: - Phase 8: Monotonic Deque Window  [monotonic deque window]

//[20] Sliding Window Maximum — https://leetcode.com/problems/sliding-window-maximum/

//[21] Minimum Consecutive Cards to Pick Up — https://leetcode.com/problems/minimum-consecutive-cards-to-pick-up/ // Swiggy, Razorpay | last seen index track, min gap between duplicates
