 --Design a function to double every number in a list.

doubleList :: [Integer] -> [Integer]
doubleList [] = []
doubleList (x:xs) = (2*x): (doubleList xs)

--doubleList = map (2*)
