module Main where
import Data.List (delete)

main = do 
    print result

result = head $ filter (check) [1..]

check i = 
    let 
    x = show i 
    x2 = show (2*i)
    x3 = show (3*i)
    x4 = show (4*i)
    x5 = show (5*i)
    x6 = show (6*i)
    in
    (x `isPermutation` x2) && 
    (x `isPermutation` x3) &&
    (x `isPermutation` x4) &&
    (x `isPermutation` x5) &&
    (x `isPermutation` x6)

isPermutation [] [] = True
isPermutation _ [] = False
isPermutation unseenDigits (p:ps)
    | p `elem` unseenDigits = isPermutation (delete p unseenDigits) ps
    | otherwise = False
