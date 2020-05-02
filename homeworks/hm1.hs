toDigitsRev :: Integer -> [Integer]
toDigitsRev n
  | n <= 0 = []
  | otherwise = (n `mod` 10):(toDigitsRev (n `div` 10))


toDigits :: Integer -> [Integer]
