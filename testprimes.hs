module Main where
import Primes (primes)
import System.Environment (getArgs)
import Data.Char (isNumber, digitToInt)

main = do 
    args <- getArgs
    -- print primes
    print $ head $ dropWhile ((<(read . head $ args)) . length . show) primes

