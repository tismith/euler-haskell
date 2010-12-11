module Main where

import System.Environment (getArgs)
import List (transpose, tails)

main = do 
    args <- getArgs
    rawF <- readFile (head args)
    let grid = map (map (read)) $ map (words) $ lines rawF
    putStrLn $ show $ result grid

result grid = 
    let
        horizontals      = id
        verticals        = transpose
        diagonalsQuarter = transpose.zipWith drop [0..]
        localmaxima      = map (maximum. map (product. take 4). tails)
        join             = concatMap (flip ($) grid)
    in
        maximum. 
        localmaxima.
        join $
            [horizontals
            ,verticals
            ,diagonalsQuarter
            ,diagonalsQuarter. reverse
            ,diagonalsQuarter. map reverse
            ,diagonalsQuarter. map reverse. reverse] 
