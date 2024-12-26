{-# LANGUAGE FlexibleInstances #-}

import Data.Maybe (fromMaybe)

instance (Num a) => Num [a] where
  (+) xs ys = zipWith (+) (pad xs ys) (pad ys xs)
  (*) xs ys = zipWith (*) (pad xs ys) (pad ys xs)
  negate = fmap negate
  abs = fmap abs
  signum = fmap signum
  fromInteger n = [fromInteger n]

pad :: [a] -> [a] -> [a]
pad xs ys = xs ++ replicate (length ys - length xs) 0

main :: IO ()
main = do
  let x = [1, 2, 3] :: [Integer]
  let y = [4, 5, 6, 7,8] :: [Integer]
  print (x + y)
  print (x * y)
  print (negate x)
  print (abs x)