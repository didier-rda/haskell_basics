data BTree a = Nil | Node (BTree a) a (BTree a) deriving (Show)

size :: BTree a -> Integer
size Nil = 0
size (Node tl _ tr) = size tl + size tr + 1
-- Reduce (fold) 

mapTree :: BTree a -> (a -> b) -> BTree b
mapTree Nil function = Nil
mapTree (Node tl n tr) function = Node (mapTree tl function) (function n) (mapTree tr function)
