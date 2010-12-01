
candidates x = [y | y <- [2..(x-1)], x `mod` y == 0]
{--
candidates x = let sqrtX = truncate $ sqrt $ fromIntegral x
                in 
            [y | y <- [2..sqrtX], x `mod` y == 0]
--}
--isPrime x | even x = False
--          | otherwise = all (\y -> mod x y /= 0) [3,5..(truncate $ sqrt $ fromIntegral x)]
--primeFactors = filter (isPrime) . candidates
cull [] = []
cull (x:xs) = x : (cull (filter (\y -> mod y x /= 0) xs))
primeFactors = cull . candidates
greatestPrimeFactor = last . primeFactors 
main = do putStrLn (show $ greatestPrimeFactor 600851475143)
