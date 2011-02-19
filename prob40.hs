module Main where
import Data.Char (digitToInt)

main = do 
    print result

d = map (digitToInt) $ concat $ map (show) [1..]

result = acc (1,1) d
acc (index,product) (x:xs)
    | index > 1000000 = product
    | index == 1 || index == 10 || index == 100 || index == 1000
        || index == 10000 || index == 100000 || index == 1000000 
        = acc (succ index, product * x) xs
    | otherwise = acc (succ index, product) xs

