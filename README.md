# Haskell Num Instance for Lists: Subtle Length Issues

This repository demonstrates a Haskell program that defines a `Num` instance for lists. While seemingly functional, this implementation has some hidden flaws related to list length consistency in operations like addition, multiplication and `fromInteger`. The main challenge is handling lists of different lengths gracefully and avoiding runtime errors.  The solution file offers a more robust implementation.

## How to Run

1.  Save the code in files named `bug.hs` and `bugSolution.hs` respectively.
2.  Compile and run using a Haskell compiler (GHC is recommended): 
   ```bash
   ghc bug.hs && ./bug
   ghc bugSolution.hs && ./bugSolution
   ```

## Bug Explanation

The `bug.hs` file contains the flawed `Num` instance. The `fromInteger` function always returns a list of length 10, leading to issues when combining lists of varying lengths.  Furthermore, functions like addition and multiplication using `zipWith` will fail if the lists have differing lengths.

## Solution

The `bugSolution.hs` file provides a refined version that incorporates error handling and padding for list operations to account for differences in lengths.