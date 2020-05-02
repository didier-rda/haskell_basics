-- Design a data definition to represent a list of booleans, and a function to determine if all values in a given list are true.
--
listTrue :: [Bool] -> Bool 
listTrue [] = True 
listTrue (x:xs) = x && listTrue xs 
-- reduce:
-- foldr (&&) True
