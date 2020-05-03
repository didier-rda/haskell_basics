-- Double even
filterEven :: [Integer] -> [Integer]
filterEven [] = []
filterEven (x:xs) = if  mod x 2 == 0  then filterEven xs else x:(filterEven xs)

--  if x then y else z (then e else do mesmo tipo, y e z)
--  sempre retorna algo (é uma função)
--  predicado: operação que retorna um boleano
--  filter isEven 
