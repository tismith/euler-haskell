
main = do putStrLn (show $ greatestPrimeFactor 600851475143)
primeFactors' i x  | x == i = [x]
                   | x `mod` i == 0 = i:(primeFactors' i (x `div` i))
                   | otherwise = primeFactors' (i+1) x
primeFactors = primeFactors' 2
greatestPrimeFactor = last . primeFactors 



