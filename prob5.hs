evenlyDivisible xs a = all (\x -> mod a x == 0) xs
result = head $ filter (evenlyDivisible [1..20]) [1..]
main = do
    putStrLn $ show result
