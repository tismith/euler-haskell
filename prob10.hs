main = do 
    putStrLn $ show $ sum $ takeWhile (<2000000) primes

primes = 2:(primes' 3 [2])

primes' x xs 
    | check x xs = x:(primes' (x+2) (xs ++ [x]))
    | otherwise = primes' (x+2) xs

check p [] = True
check p (x:xs)
    | x > (ceiling $ sqrt $ fromIntegral p) = True
    | p `mod` x == 0 = False
    | otherwise = check p xs

