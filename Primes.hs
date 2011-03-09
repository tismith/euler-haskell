module Primes (primes) where
import Data.Map as Map

primes :: [Int]
primes = 2 : sieve [3,5 ..]

sieve xs = sieve' xs Map.empty
    where
    sieve' [] table = [] 
    sieve' (x:xs) table =
        case Map.lookup x table of 
            Nothing -> x : sieve' xs (Map.insert (x*x) [x] table) 
            Just facts -> sieve' xs (foldl reinsert (Map.delete x table) facts)
                where
                reinsert table prime = Map.insertWith (++) (x+prime) [prime] table


{-- Better
primes  = 2 : [x | x <- [3, 5 ..], isprime x] 
isprime x = all (\p -> x `mod` p > 0) (factorsToTry x)
    where
        factorsToTry x = takeWhile (\p -> p*p <= x) primes
--}

{-- Mine...
primes = 2:(primes' 3 [2])

primes' x xs 
    | check x xs = x:(primes' (x+2) (xs ++ [x]))
    | otherwise = primes' (x+2) xs

check p [] = True
check p (x:xs)
    | x > (ceiling $ sqrt $ fromIntegral p) = True
    | p `mod` x == 0 = False
    | otherwise = check p xs
--}


