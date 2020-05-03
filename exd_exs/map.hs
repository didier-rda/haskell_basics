add30 :: [Integer] -> [Integer] 
add30 [] = []
add30 (x:xs) = x + 30 : (add30 xs)
