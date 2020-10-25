scc 9*10
succ (9*10)
div 42 7
42 `div` 7
succ (succ 3)

doubleMe x = x*2
doubleUs x y = doubleMe x + doubleMe y

doubleUs 3 4
doubleUnder100Number x = if x > 100
                         then x
                         else x*2
doubleUnder100Number 56

doubleSmallNumber' x = (if x > 100 then x else x*2) + 1 
doubleSmallNumber' 56

-- strings are lists
a = ['a','b'] 
a == "ab"

-- concatene lists That's not a problem when dealing with lists that aren't too big.
[1,2,3] ++ [4,5,6]

-- the cons operator
4 : [1,2,3]
-- [1,2,3] is actually just syntactic sugar for 1:2:3:[]

-- get the element of a list with: !!
a = [1,[2,3],3]
a !! 1 
> [2,3]
[1,2] !! 1

-- comparasion between 2 lists

-- check first element, if equals, test the second

[1,2,3,4] > [1,2,3,5]
> false

[1,2,3,4] > [3.1]
[[[1]]] > [2]
> --error, they have to be comparable elements

head [[1,2,3], [4]] -- first element of list
tail [1,2,3] -- complementar of head

last [1,2,3]

init [1,2,3] -- complementar of last

null [] -- check a list is empty

reverse [1,2] -- reverse a list

take 2 [1,2,3,4,5]
a = [1,2,3,4]

drop 1 a  -- drop a element in a but is tmp
a

maximum [[1,2],[3,4]] -- takes a list of stuff that can be put in some kind of order and returns the biggest element.

minimun ...  --idem

4 `elem` [1,2]
elem [] [[1]]
> false


elem 2 [[1]]
> error -- 2 insnt possible element in that list

[1..39] -- Texas Range list

[2, 5 ..100] -- Create aritmetic progressions
[-10, 0 ..100]
[20, 19 ..0]


-- INFINITE LISTS FUNCTIONS
take 4 [1,3..]     -- infinit list

take 6 (cycle [1,2,3]) --cycle infint list
take 6 (repeat [1,2,3]) --cycle infint list

-- LIST COMPREHENSION
[2*x | x <- [1, 100..1000]]

-- add predicate
-- Note that weeding out lists by predicates is also called filtering. We took a list of numbers and we filtered them by the predicate.

[x*2 | x <- [1..10], x*2 >= 12] 
[ x | x <- [50..100], x `mod` 7 == 3]

boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]
-- aplicar em xs: se x< 10 "BOOM", se não "BANG!" tal que x pertence a xs E o ele(xs) for ímpar

xs = [4,6,8,10,1,11]

xb = boomBangs xs

[ x*y | x <- [2,5,10], y <- [8,10,11,1]] -- Produto de todos os elem de x pelos elem de y

[[x,y] | x <-[1,2,3,4], y <-[1,2,3]] -- produto cartesiano

nouns = ["hobo","frog","pope"]
adjectives = ["lazy","grouchy","scheming"]
[adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns]

-- _ means that we don't care what we'll draw from the list anyway so instead of writing a variable name that we'll never use

[1 | _ <- xs]

length' xs = sum [1 | _ <- xs]

-- because strings are lists, we can use list comprehensions to process and produce strings

removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]   

removeNonUppercase "isdjsidAsidjs"

-- nested list comprhension
xxs = [[1,3,5,2,3,1,2,4,5],[1,2,3,4,5,6,7,8,9],[1,2,4,2,1,6,3,1,3,2,3,6]]
[ [ x | x <- xs, even x ] | xs <- xxs]

-- tuples
[("Rodrigo","04671-300", 13),("Carlos", "04571-500","3")]
-- > error cuz 3 most be a int
clients = [("Rodrigo","04671-300", 13),("Carlos", "04571-500",3)]

-- zip and create a list of pairs
zip [1,2,3,4,5] [5,5,5,5,5]

zip [1 .. 5] ["one", "two", "three", "four", "five"]

fst (8, 5)
snd (8, 5)

zip [1..] ["apple", "orange", "cherry", "mango"]

-- which right triangle that has integers for all sides and all sides equal to or smaller than 10 has a perimeter of 24?

right_triangles_per24 = [(a, b, c) | a <- [1..10], b <- [1..10], c <-[1..10], a*a+b*b == c*c, a+b+c ==24] -- Wrong! cuz return 2 tuples with the same triangle


right_triangles_per24 = [(a, b, c) | a <- [1..10], b <- [1..a], c <-[1..b], b*b+c*c == a*a, a+b+c ==24] -- Correct! 

