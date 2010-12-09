import System(getArgs)

main = do 
    args <- getArgs
    putStrLn $ show $ primes !! (pred $  read $ head args)

primes = 2:(primes' 3 [2])

primes' x xs 
    | check x xs = x:(primes' (x+2) (xs ++ [x]))
    | otherwise = primes' (x+2) xs

check p [] = True
check p (x:xs)
    | x > (ceiling $ sqrt $ fromIntegral p) = True
    | p `mod` x == 0 = False
    | otherwise = check p xs


