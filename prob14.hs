module Main where

main = do putStrLn $ show result

collatz 1 = [1]
collatz n 
    | even n = n : (collatz (n `div` 2))
    | odd n = n : (collatz (3 * n + 1))

lengths = map (\x -> (x, length (collatz x))) [1..1000000] 

maxLength current [] = current
maxLength c@(cX,cL) (n@(nX,nL):xs)
    | nL > cL = maxLength n xs
    | otherwise = maxLength c xs

result = fst $ maxLength (0,0) $ lengths 
