candidates x = [y | y <- [(x-1), (x-2)..2], x `mod` y == 0]
isPrime x = all (\y -> mod x y /= 0) [2..(x-1)]
primeFactors = filter (isPrime) . candidates
greatestPrimeFactor = head $ primeFactors 600851475143
main = do putStrLn (show greatestPrimeFactor)
