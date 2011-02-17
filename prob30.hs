module Main where
import Data.Char (digitToInt)

main = do
    print $ result

upperBound = 7 * (9^5)
check value = value == (sum $ map (^5) $ map (digitToInt) $ show value)
result = sum $ filter (check) [2..upperBound]


