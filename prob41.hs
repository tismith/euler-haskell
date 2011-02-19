module Main where
import Data.Char (digitToInt)
import Data.List (delete)
import Primes (primes)

main = do 
    -- print $ findMaxPandigital 0 primes
    print $ head $ dropWhile ((<9) . length . show) primes

findMaxPandigital currentMax (p:ps)
    | length (show p) > 9 = currentMax
    | isPandigital p = findMaxPandigital p ps
    | otherwise = findMaxPandigital currentMax ps

isPandigital p = 
    let 
        listP = map (digitToInt) (show p)
        numDigitsP = length listP
    in 
        isPandigital' [1..numDigitsP] listP 

isPandigital' [] [] = True
isPandigital' _ [] = False
isPandigital' unseenDigits (p:ps)
    | p `elem` unseenDigits = isPandigital' (delete p unseenDigits) ps
    | otherwise = False
