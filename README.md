# Haskell Bug: Infinite List Length

This repository demonstrates a common error in Haskell: attempting to compute the length of an infinite list. This leads to a stack overflow because the `length` function needs to traverse the entire list to determine its length, which is impossible for an infinite list.

The `bug.hs` file contains the erroneous code, while `bugSolution.hs` offers a corrected approach.  This example highlights the importance of understanding lazy evaluation in Haskell and handling infinite data structures carefully.