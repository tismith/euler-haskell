main = do
    putStrLn $ show ((factorial 40) / ((factorial 20) * (factorial 20)))

factorial 0 = 1
factorial x = x * (factorial (pred x))
