module Main where

main = do print result

mersenne = 28433 * (2 ^ 7830457) + 1
result = mersenne `mod` 10000000000
