module Main where

import List (group)

main = do
    putStrLn $ show $ fst $ head $ 
        dropWhile ((<500) . snd) $ triangleFactors

{--
factors x = factors' 1 x
factors' n x 
    | n == x = [x]
    | x `mod` n == 0 = n:(factors' (n+1) x)
    | otherwise = (factors' (n+1) x)
--}

triangles = zip (triangles' 1 0) [1..]
triangles' n x = (n+x):(triangles' (n+1) (n+x))


triangleFactors = triangleFactors' 1 0
triangleFactors' n x = 
    ((n+x),numFactors (n+x)):(triangleFactors' (n+1) (n+x))

{--
 - Sneaky trick:
 - If composite number c has a prime factorization of 
 - a ^ e1 * b ^ e2 * c ^ e3
 - Then the number of factors is (e1+1)*(e2+1)(e3+1)
 --}
numFactors 1 = 1
numFactors x = product (map ((+1) . length) ((group . primeFactors) x))

primeFactors' i x  | x == i = [x]
                   | x `mod` i == 0 = i:(primeFactors' i (x `div` i))
                   | otherwise = primeFactors' (i+1) x
primeFactors = primeFactors' 2

