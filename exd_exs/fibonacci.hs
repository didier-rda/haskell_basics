--Fibonacci
-- retorna o elemento da n-essima posição
valueFibonacci :: Integer -> Integer
valueFibonacci 0 = 0
valueFibonacci 1 = 1
valueFibonacci n = valueFibonacci (n - 1) + valueFibonacci (n -2)


listFibonacci :: Integer -> [Integer]
listFibonacci 0 = [0]
--listFibonacci 1 = [1]
listFibonacci n = reverse ((valueFibonacci n):(listFibonacci (n - 1)))
--listFibonacci n = valueFibonacci (n - 1) + listFibonacci (n -2)
