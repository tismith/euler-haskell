import System(getArgs)

main = do 
    args <- getArgs
    putStrLn $ show $ primes !! (pred $  read $ head args)

primes = primes' 2 []
primes' x xs 
    | any (\a -> x `mod` a == 0) xs = primes' (succ x) xs
    | otherwise = x:(primes' (succ x) (x:xs))

