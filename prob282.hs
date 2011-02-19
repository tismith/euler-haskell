module Main where

main = do 
    putStrLn $ concat ["A(1,0) = ", show $ ackermann 1 0]
    putStrLn $ concat ["A(2,2) = ", show $ ackermann 2 2]
    putStrLn $ concat ["A(3,4) = ", show $ ackermann 3 4]
    print result

result = (sum (map (\n -> ackermann n n) [0,1..6])) `mod` (14^8)

ackermann m n 
    | m == 0 = succ n
    | m > 0 && n == 0 = ackermann (pred m)  1
    | m > 0 && n > 0 = ackermann (pred m) (ackermann m (pred n))

