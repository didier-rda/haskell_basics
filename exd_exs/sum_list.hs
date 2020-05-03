sumList :: [Integer] -> Integer
sumList [] = 0
sumList (x:xs) = x + sumList xs 

multList :: [Integer] -> Integer
multList [] = 1
multList (x:xs) = x * multList xs
--foldr (+) 0
