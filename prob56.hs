module Main where
import Data.Char (digitToInt)

main = do
    print $ maxSum

maxPower x =
    let raiseToStr a =  (map (digitToInt)) . (show . (a^))
        in
    maximum $ map (sum . (raiseToStr x)) [1..100]
maxSum = maximum $ map (maxPower) [1..100]


