module Main where
import Data.List (tails)
main = do putStrLn $ show result
result = head $ dropWhile ((/= 10) . length) $ tails . show $ sum [x^x | x <- [1..1000]]

