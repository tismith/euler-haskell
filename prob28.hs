module Main where 
import System.Environment (getArgs)
import Data.List (foldl')

main = do 
    args <- getArgs
    putStrLn $ show $ result (read $ head args)

intervals max = [source | source <- [2..max], even source]

foursum (sum, topright) interval = 
    let start = topright + interval 
        in
    sum `seq` topright `seq` (sum + 4*start + 6*interval, start + 3*interval)

result max = fst $ foldl' (foursum) (1, 1) (intervals (max-1))
