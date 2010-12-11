module Main where
main = do putStrLn $ show result
result = fst $ head $ filter ((> 999) . length . show . snd) (fibbonacci 1 1 3)
fibbonacci i j term = (term,(i+j)):(fibbonacci j (i+j) (term+1))
