{-# LANGUAGE FlexibleInstances #-}

instance (Num a) => Num [a] where
  (+) = zipWith (+)
  (*) = zipWith (*)
  negate = fmap negate
  abs = fmap abs
  signum = fmap signum
  fromInteger n = replicate 10 (fromInteger n)

main :: IO ()
main = do
  let x = [1, 2, 3] :: [Integer]
  let y = [4, 5, 6] :: [Integer]
  print (x + y)
  print (x * y)
  print (negate x)
  print (abs x)